﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Group2_FinalProject
{
    public class MyCalendar
    {
        bookedEvents = new List<int[]>();
    }

    public bool Book(int start, int end)
    {
        if (start < 0 || start >= end || end > Math.Pow(10, 9))
            return false;

        foreach (var evt in bookedEvents)
        {
            if (evt[0] < end && start < evt[1])
            {
                return false;
            }
        }

        bookedEvents.Add(new int[] { start, end });
        bookedEvents.Sort((async, b) => async[0]));
        return true;
    }
}