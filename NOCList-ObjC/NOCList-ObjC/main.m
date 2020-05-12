//
//  main.m
//  NOCList-ObjC
//
//  Created by Mark Gerrior on 5/11/20.
//  Copyright © 2020 Mark Gerrior. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSIAgent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, from Division Seven!");
    }

    LSIAgent *agent0 = [[LSIAgent alloc] initWithCoverName:@"Ethan Hunt" realName:@"Tom Cruise" accessLevel:8 compromised:false];
    LSIAgent *agent1 = [[LSIAgent alloc] initWithCoverName:@"Jim Phelps" realName:@"Jon Voight" accessLevel: 9 compromised: true];
    LSIAgent *agent2 = [[LSIAgent alloc] initWithCoverName:@"Claire Phelps" realName:@"Emmanuelle Beart" accessLevel: 5 compromised: false];
    LSIAgent *agent3 = [[LSIAgent alloc] initWithCoverName:@"Eugene Kittridge" realName:@"Henry Czerny" accessLevel: 10 compromised: true];
    LSIAgent *agent4 = [[LSIAgent alloc] initWithCoverName:@"Franz Krieger" realName:@"Jean Reno" accessLevel: 4 compromised: false];
    LSIAgent *agent5 = [[LSIAgent alloc] initWithCoverName:@"Luther Stickell" realName:@"Ving Rhames" accessLevel: 4 compromised: false];
    LSIAgent *agent6 = [[LSIAgent alloc] initWithCoverName:@"Sarah Davies" realName:@"Kristin Scott Thomas" accessLevel: 5 compromised: true];
    LSIAgent *agent7 = [[LSIAgent alloc] initWithCoverName:@"Max RotGrab" realName:@"Vanessa Redgrave" accessLevel: 4 compromised: false];
    LSIAgent *agent8 = [[LSIAgent alloc] initWithCoverName:@"Hannah Williams" realName:@"Ingeborga Dapkūnaitė" accessLevel: 5 compromised: true];
    LSIAgent *agent9 = [[LSIAgent alloc] initWithCoverName:@"Jack Harmon" realName:@"Emilio Estevez" accessLevel: 6 compromised: true];
    LSIAgent *agentA = [[LSIAgent alloc] initWithCoverName:@"Frank Barnes" realName:@"Dale Dye" accessLevel: 9 compromised: false];

    NSArray *agents = @[agent0, agent1, agent2, agent3, agent4, agent5, agent6, agent7, agent8, agent9, agentA];

    // Iterate over each agent and determine the total amount of compromised agents
    int compromisedAgentCount = 0;

    for (LSIAgent *agent in agents) {
        if (agent.compromised.boolValue == YES) {
            ++compromisedAgentCount;
        }
    }

    // Print a message revealing the total number of compromised agents.
    NSLog(@"# of Compromised Agents: %d", compromisedAgentCount);

    // Iterate over each agent and determine the total amount of clean agents.
    // Additionally, if the agent is clean, print a console message saying "Agent is clean: [agent's cover name]."
    int cleanAgentCount = 0;

    for (LSIAgent *agent in agents) {
        if (agent.compromised.boolValue == false) { // false works too.
            ++cleanAgentCount;
            NSLog(@"Agent is clean:: %@", agent.coverName);
        }
    }

    // Print a message revealing the total number of clean agents.
    NSLog(@"# of Clean Agents: %d", cleanAgentCount);

    return 0;
}
