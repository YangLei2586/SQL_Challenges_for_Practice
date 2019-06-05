select case
           when P IS NULL Then Concat(N,' ','Root')
           when N in (select distinct P from BST) Then Concat(N, ' ','Inner')
           else Concat(N, ' ', 'Leaf')
        end
from BST
order by N ASC;
           
