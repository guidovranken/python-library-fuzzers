all : fuzzer-html fuzzer-email fuzzer-httpclient fuzzer-json fuzzer-difflib fuzzer-csv fuzzer-decode

CPYTHON_LIB_PATH=$(CPYTHON_INSTALL_PATH)/lib/python3.9
CPYTHON_LIB_DYNLOAD_PATH=$(CPYTHON_LIB_PATH)/lib-dynload

PYTHON_LD_FLAGS=$(CPYTHON_INSTALL_PATH)/lib/libpython3.9.a -lutil -lpthread $(CPYTHON_LIB_DYNLOAD_PATH)/*.so

fuzzer-html:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/html.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-html
fuzzer-email:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/email.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-email
fuzzer-httpclient:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/httpclient.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-httpclient
fuzzer-json:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/json.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-json
fuzzer-difflib:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/difflib.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-difflib
fuzzer-csv:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/csv.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-csv
fuzzer-decode:
	clang++ $(CXXFLAGS) -fsanitize=fuzzer -std=c++17 -I $(CPYTHON_INSTALL_PATH)/include/python3.9/ fuzzer.cpp -DPYTHON_HARNESS_PATH="\"$(OUT)/decode.py\"" $(PYTHON_LD_FLAGS) -ldl -o fuzzer-decode
