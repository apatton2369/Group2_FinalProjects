using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Group2_FinalProject
{
    public class Tallest_Billboard
    {
        public int TallestBillboard(int[] rods)
        {
            int n = rods.Length;
            int sum = 0;
            foreach (int rod in rods)
                sum += rod;

            int[] dp = new int[sum + 1];

            for (int i = 0; i < dp.Length; i++)
            {
                dp[i] = -1;
            }

            dp[0] = 0;

            for (int i = 0; i < n; i++)
            {
                int[] currDp = (int[])dp.Clone(); // Copy the dp array to avoid concurrent modification issues
                for (int j = 0; j <= sum - rods[i]; j++)
                {
                    if (dp[j] >= 0)
                    {
                        currDp[j + rods[i]] = Math.Max(currDp[j + rods[i]], dp[j]); // Use the rod on the higher side
                        currDp[Math.Abs(j - rods[i])] = Math.Max(currDp[Math.Abs(j - rods[i])], dp[j] + Math.Min(j, rods[i])); // Use the rod on the lower side
                    }
                }
                dp = currDp;
            }

            return dp[0];
        }
    }
}