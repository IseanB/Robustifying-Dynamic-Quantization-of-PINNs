CC=gcc
CFLAGS=-Iinclude -Wall -Wextra
LDFLAGS=-lm

all: pinn test_loss_functions test_neural_network

pinn: src/main.c src/neural_network.c src/loss_functions.c src/utils.c
	$(CC) -o pinn src/main.c src/neural_network.c src/loss_functions.c src/utils.c $(CFLAGS) $(LDFLAGS)

test_loss_functions: tests/test_loss_functions.c src/loss_functions.c
	$(CC) -o test_loss_functions tests/test_loss_functions.c src/loss_functions.c $(CFLAGS) $(LDFLAGS)

test_neural_network: tests/test_neural_network.c src/neural_network.c
	$(CC) -o test_neural_network tests/test_neural_network.c src/loss_functions.c src/neural_network.c src/utils.c $(CFLAGS) $(LDFLAGS)

clean:
	rm -f pinn test_loss_functions test_neural_network
