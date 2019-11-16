# Distributed System Lab Exercise

This is the resource repository for the course Distributed System in Fall 2019.

## Implement Raft

- Resources  
  - [Raft paper, illustrated Raft guide](http://thesecretlivesofdata.com/raft/)
  - [Deigo's paper](doc/x6-atc14-raft.pdf)
  - [JIT LAB 6.28](http://nil.csail.mit.edu/6.824/2017/labs/lab-raft.html)

## Assignment 1: Raft Leader Election

- ### Implement Raft by adding code to raft/raft.go (only)  
  
  find some example code of how to send and receive RPC-

- ### TASK:Leader election

  1. First task is to fill the `RequestVoteArgs` and `RequestVoteReply` structs
  2. Modify `Make()` to create a background goroutine that starts an election by sending out RequestVote RPC when it hasn’t heard from another peer for a while.  
   PS: *You need to implement `RequestVote` RPC handler so that servers will vote for one another*
  3. To implement heartbeats, you will need to define `AppendEntries` struct (though you will not need any real payload yet), and have the leader send them out periodically  
    PS: Also need to implement `AppendEntries` RPC handler
  4. make sure the election timeouts don't always fire at the same time

- ### TIPS

  - Remember field names of any structures you will be sending over RPC must start with **capital letters**
  - Read and understand the paper before you start. Figure 2 in the paper may provide a good guideline.
  - Start early!

- ### TEST
  
  For Linux:
  
  ```shell
  chmod +x test_1.sh
  ./test_1.sh
  ```

- ### Raft Server Outline
  
    - rf = Make(...)
  create a new Raft server.
    - rf.Start(command interface{}) (index, term, isleader)  
    start agreement on a new log entry
    - rf.GetState() (term, isLeader)
    ask a Raft for its current term, and whether it thinks it is leader
 ApplyMsg 
 each time a new entry is committed to the log, each Raft peer
   should send an ApplyMsg to the service (or tester)
   in the same server.

  
  
