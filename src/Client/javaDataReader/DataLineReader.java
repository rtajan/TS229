import java.io.*;

class DataLineReader
{
    public DataLineReader(DataInput data_input)
    {
        m_data_input = data_input;
    }
    
    public String readLine()
    {
        String buffer_str = new String();
        
        try
        {
            buffer_str = m_data_input.readLine();
            
        }
        catch (StreamCorruptedException e)
        {
            System.out.println("Stream Corrupted Exception Occured");
        }
        catch (EOFException e)
        {
            System.out.println("EOF Reached");
        }
        catch (IOException e)
        {
            System.out.println("IO Exception Occured");
        }
        
        return buffer_str;
    }
    
    private DataInput m_data_input;
}