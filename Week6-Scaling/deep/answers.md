# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

This method, along with using hash values only seems useful in case of a server issue where data is lost, as the data is distributed "evenly" it _might_ not be as catastrophic as loosing the data on a given boat, this however is only under the asusmption that the distribution algorithm (namely, the random function) is properly defined and does not have a tendency towards any given assignment. Furthermore it makes querying highly inefficient.

## Partitioning by Hour

This is the most logical one as you know where the data is stored, it does pose the threat of loosing the majority of the important data if say the boat storing the information from 00-07 hours suffers a malfunction, but it comes at the benefit of having a simpler and faster database structure.

## Partitioning by Hash Value

Using hash values is similar to random partitioning, it also relies on the fact that the hashing isn't more prone towards a value (which in real world scenarios isn't as easy to ensure) so that must be taken into account. It _should_ provide a safer storage (see explanation in Random Partitioning), I'd argue it's better than using a random function as one could locally hash the value of the given time they need and use that information to go to the boat that contains the data.
