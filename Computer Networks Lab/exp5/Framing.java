import java.io.*;
class Framing
{
            public static void main(String args[]) throws IOException
            {
                        String data;
                        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
                        System.out.print("\nEnter the Data Stream: ");
                        data=br.readLine();
                        String str;
                        int select;
                        System.out.print("\nThe various Framing techniques are:\n1) Character Count\n2) Byte Stuffing\n3) Bit Stuffing\n4) Physical Data Violation\n\nEnter the number for the corresponding Framing technique: ");
                        str=br.readLine();
                        select=Integer.parseInt(str);
                        switch(select)
                        {
                                    case 1: System.out.print("\nThe Frame after Processing is: "+CC(data));
                                                break;
                                    case 2: System.out.print("\nEnter the Flag Stream: ");
                                                String flag;
                                                flag=br.readLine();
                                                System.out.print("\nThe Frame after processing: "+Byte(data,flag));
                                                break;
                                    case 3: flag="01111110";
                                                System.out.print("\nThe Flag Stream is: "+flag);
                                                System.out.print("\n\nThe Frame after processing: "+Bit(data,flag));
                                                break;
                                    case 4: System.out.print("\nThe Frame after processing: "+PDV(data));
                                                break;
                        }
            }
            public static String CC(String input)
            {
                        int len=input.length();
			len=len+1;
                        String head=""+len;
                        String output=head+input;
                        return output;
            }
            public static String Byte(String input,String flag)
            {
                        int len=input.length();
                        int lenf=flag.length();
                        char na[]=new char [2*len];
                        int ni=0;
                        int fromindex=0;
                        for(int i=0;i<len;i++)
                        {
                                    fromindex=input.indexOf(flag,i);
                                    if(fromindex==i)
                                    {
                                                na[ni]='e';
                                                ni++;
                                                for(int j=0;j<lenf;j++,i++)
                                                {
                                                            na[ni]=flag.charAt(j);
                                                            ni++;
                                                }
                                    }
                                    else if(i<fromindex)
                                    {
                                                for(int l=i;l<fromindex;l++,i++)
                                                {
                                                            na[ni]=input.charAt(l);
                                                            ni++;
                                                }
                                    }
                                    else if(fromindex==-1)
                                    {
                                                for(int k=i;k<len;k++,i++)
                                                {
                                                            na[ni]=input.charAt(k);
                                                            ni++;
                                                }
                                                break;
                                    }
                                    i=i-1;
                        }
                        String output=new String (na,0,ni);
                        return flag+" "+output+" "+flag;
            }
            public static String Bit(String input,String flag)
            {
                        int count=0;
                        int len=input.length();
                        int maxs=len/5;
                        int ni=0;
                        char na[]=new char [len+maxs];
                        for(int i=0;i<len;i++)
                        {
                                    if(input.charAt(i)=='1')
                                    {
                                                count++;
                                                if(count==5)
                                                {
                                                            count=0;
                                                            na[ni]=input.charAt(i);
                                                            ni++;
                                                            na[ni]='0';
                                                            ni++;
                                                            continue;
                                                }
                                    }
                                    else
                                    {          
                                                count=0;
                                    }
                                    na[ni]=input.charAt(i);
                                    ni++;
                        }
                        String output=new String (na,0,ni);
                        return flag+" "+output+" "+flag;
                       
            }
            public static String PDV(String input)
            {
                        int len=input.length();
                        char na[]=new char [len];
                        int ni=0;
                        for(int i=0;i<len;i++)
                        {
                                    if(input.charAt(i)=='0')
                                    {
                                                na[ni]='L';
                                                ni++;
                                    }
                                    else
                                    {
                                                na[ni]='H';
                                                ni++;
                                    }
                        }
                        String output=new String (na);
                        return output;
            }
}