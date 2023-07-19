module number_operations;

import std.stdio;

void main()
{
    NumberOperations.GENERATE_FIBONNACCI_SEQUENCE();
    NumberOperations.GENERATE_ODD_NUMBERS();
}

class NumberOperations
{
    static int INPUT = 6;

    static void GENERATE_FIBONNACCI_SEQUENCE()
    {
        static int INITIAL_VALUE = 0, ARBITRARY_VALUE = 1, SUM;

        write(INITIAL_VALUE, " ", ARBITRARY_VALUE);

        for (int index = 2; index <= INPUT; index++)
        {
            SUM = INITIAL_VALUE + ARBITRARY_VALUE;
            INITIAL_VALUE = ARBITRARY_VALUE;
            ARBITRARY_VALUE = SUM;
            write(" ", SUM);
        }
        writeln("\nDone...");
    }

    /* GENERATE ODD NUMBERS */
    static void GENERATE_ODD_NUMBERS()
    {
        write("Printing Odd Numbers: \n");
        for (int index = 0; index <= INPUT; index++)
        {
            if (index % 2 != 0)
            {
                write(index, " ");
            }
        }
        writeln("\nDone..."); 
    }
}
