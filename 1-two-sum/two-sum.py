class Solution(object):
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        """ Brute Force
            Time Complexity-O(N^2)
            Space Complexity-O(1)

        for i in range(0, len(nums)-1):
            for j in range(i+1, len(nums)):
                if nums[i]+nums[j]==target:
                    return [i,j]
        
        Better Solution-Using hashmap
        Time Complexity-O(N)
        Space Complexity-O(N)"""

        prevmap={}
        for i,n in enumerate(nums):
            diff=target-n
            if diff in prevmap:
                return [prevmap[diff],i]
            else:
                prevmap[n]=i
        