RAY_TRACER_MODE	?=	debug

TOP			=	../..
SRC			=	$(TOP)/src
TESTSRC		=	$(SRC)/tests
FEATURESDIR	=	$(SRC)/features
STEPSDIR	=	$(FEATURESDIR)/steps
DOC_SRC		=	$(TOP)/doc

GEN			=	gen
OBJ			=	$(GEN)/$(RAY_TRACER_MODE)/.obj
DOC_GEN		=	$(GEN)/doc

DESTDIR		?=	/opt

GPRBUILD	=	gprbuild
GPRINSTALL	=	gprinstall
GPRCLEAN	=	gprclean
GNATBDD		=	gnatbdd
INSTALL		=	install
CAT			=	cat

RT_BDD		=	rt_bdd
GEN_BDD		=	$(OBJ)/$(RT_BDD).adb $(OBJ)/$(RT_BDD).gpr
TESTSRCS	=	$(TESTSRC)/projectile.adb
SRCS		=	$(SRC)/rtch.ads $(SRC)/maths/rtch-maths.ads $(SRC)/maths/rtch-maths-tuples.ads
STEPS		=	$(STEPSDIR)/rtch-maths-tuples-steps.ad[sb]
FEATURES	=	$(FEATURESDIR)/tuples.feature

#########################################################################################################################

all: run_bdd tests ray_tracer

.PHONY: $(RT_BDD) $(STEPS)

# Build up the BDD driver.
$(RT_BDD): $(GEN_BDD) $(SRCS)
	$(GPRBUILD) -P$(OBJ)/$(RT_BDD).gpr

$(GEN_BDD) &: ray_tracer.gpr $(FEATURES) $(STEPS)
	$(GNATBDD) -P ray_tracer.gpr

run_bdd: $(RT_BDD)
	$(OBJ)/$(RT_BDD) --features=../../src/features/

# Tests
tests: tests.gpr $(TESTSRCS)
	$(GPRBUILD) -p -XRAY_TRACER_MODE=$(RAY_TRACER_MODE) -Ptests.gpr

# Build the ray-tracer itself.
ray_tracer: ray_tracer.gpr $(SRCS)
	$(GPRBUILD) -p -XRAY_TRACER_MODE=$(RAY_TRACER_MODE) -Pray_tracer.gpr

.PHONY: clean

clean:
	$(GPRCLEAN) -P$(OBJ)/rt_bdd.gpr
	$(GPRCLEAN) -Ptests.gpr
	$(GPRCLEAN) -Pray_tracer.gpr
	rm $(GEN_BDD)

#########################################################################################################################

.PHONY: todo

todo:
	grep -riw --color TODO $(SRC)
