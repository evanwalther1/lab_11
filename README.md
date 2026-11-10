# Lab 11 \- Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| :---- | :---- | :---- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names

Landon Romero and [Evan Walther](mailto:evanwalther@u.boisestate.edu)

## Summary

In this lab we learned two different ways to implement the counter circuit structure. The first one was the ripple counter, this is just built using three full adders with each input being the others output. The second one was the modulo counter which is built by using bit logic to divide a clock circuit by 2. 

## Lab Questions

### 1 \- Why does the Modulo Counter actually divide clocks by 2 \* Count?
The modulo counter works by having each bit A, B, and C getting the the clocks signal but divided by 2 each time so A would get 1/2 B would get 1/4 and C would get 1/8, which means every 1/2,1/4,1/8 cycle that bit is being flipped. Essentially each individual flip-flop in the synchronous counter divides the frequency of the previous stage by 2 to get the right bits flipped at the right time.

### 2 \- Why does the ring counter's output go to all 1s on the first clock cycle?
Because on the first clock cycle each ring counters input is starting at 1, that way the values flip flop correctly. We're setting the cycle up in a way to where they are halved each time. 

### 3 \- What width of ring counter would you use to get to an output of \~1KHz?
You would need 1,000 flip flops in a line so 1,000 bits.
