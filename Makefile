all : fuzzer-html fuzzer-email fuzzer-httpclient fuzzer-json fuzzer-difflib fuzzer-csv fuzzer-decode fuzzer-ast fuzzer-tarfile fuzzer-zipfile fuzzer-re

PYTHON_CONFIG_PATH=$(CPYTHON_INSTALL_PATH)/bin/python3-config
CXXFLAGS += $(shell $(PYTHON_CONFIG_PATH) --cflags)
LDFLAGS += -rdynamic $(shell $(PYTHON_CONFIG_PATH) --ldflags --embed)

fuzzer-html:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"html.py\"" -ldl $(LDFLAGS) -o fuzzer-html
fuzzer-email:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"email.py\"" -ldl $(LDFLAGS) -o fuzzer-email
fuzzer-httpclient:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"httpclient.py\"" -ldl $(LDFLAGS) -o fuzzer-httpclient
fuzzer-json:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"json.py\"" -ldl $(LDFLAGS) -o fuzzer-json
fuzzer-difflib:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"difflib.py\"" -ldl $(LDFLAGS) -o fuzzer-difflib
fuzzer-csv:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"csv.py\"" -ldl $(LDFLAGS) -o fuzzer-csv
fuzzer-decode:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"decode.py\"" -ldl $(LDFLAGS) -o fuzzer-decode
fuzzer-ast:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"ast.py\"" -ldl $(LDFLAGS) -o fuzzer-ast
fuzzer-re:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"re.py\"" -ldl $(LDFLAGS) -o fuzzer-re
fuzzer-zipfile:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"zipfile.py\"" -ldl $(LDFLAGS) -o fuzzer-zipfile
fuzzer-tarfile:
	clang++ $(CXXFLAGS) $(LIB_FUZZING_ENGINE) -std=c++17 fuzzer.cpp -DPYTHON_HARNESS_PATH="\"tarfile.py\"" -ldl $(LDFLAGS) -o fuzzer-tarfile
