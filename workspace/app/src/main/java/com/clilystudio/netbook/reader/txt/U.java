package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.mixtoc.LocalTxtToc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class U {

    private static final String[] a = {"\b*(\u7B2C.+\u7AE0)", "(\\d{3})\\s"};

    public static Toc a(String String1) {
        Toc Toc2 = new Toc();
        Object Object4;
        int int6;

        Toc2.setHost(String1);
        try {
            Object4 = d(String1);
        } catch (IOException IOException3) {
            IOException3.printStackTrace();
            return null;
        }
        label_110:
        {
            if (Object4 == null || ((List) Object4).size() == 0) {
                String[] String_1darray5 = a;

                int6 = 0;
                while (int6 < 2) {
                    BufferedReader BufferedReader8;
                    Object Object9;
                    Pattern Pattern10;
                    int int11;
                    int int12;
                    int int13;

                    try {
                        String String7 = String_1darray5[int6];

                        BufferedReader8 = com.clilystudio.netbook.hpay100.a.a.G(String1);
                        Object9 = new ArrayList();
                        Pattern10 = Pattern.compile(String7);
                    } catch (IOException IOException21) {
                        IOException21.printStackTrace();
                        return null;
                    }
                    int11 = 0;
                    int12 = 0;
                    int13 = 0;
                    for (; ; ) {
                        Object Object14;

                        try {
                            Object14 = BufferedReader8.readLine();
                        } catch (IOException IOException22) {
                            IOException22.printStackTrace();
                            return null;
                        }
                        if (Object14 != null) {
                            label_98:
                            {
                                try {
                                    Matcher Matcher15 = Pattern10.matcher((CharSequence) Object14);
                                    Object Object17;

                                    if (!Matcher15.find() || Matcher15.groupCount() <= 0)
                                        break label_98;
                                    if (((List) Object9).size() > 0) {
                                        ChapterLink ChapterLink19 = (ChapterLink) ((List) Object9).get(-1 + ((List) Object9).size());

                                        ChapterLink19.setTxtCharLength(int12 - ChapterLink19.getTxtCharOffset());
                                    }
                                    Object17 = new ChapterLink();
                                    ((ChapterLink) Object17).setUnreadble(false);
                                    ((ChapterLink) Object17).setTitle(Matcher15.group(1));
                                    ((ChapterLink) Object17).setTxtLineOffset(int13);
                                    ((ChapterLink) Object17).setTxtCharOffset(int12);
                                    ((List) Object9).add(Object17);
                                } catch (IOException IOException23) {
                                    IOException23.printStackTrace();
                                    return null;
                                }
                                int11 = int13;
                            }
                            if (int13 - int11 > 2000) {
                                try {
                                    Object4 = new ArrayList();
                                    if (((List) Object4).size() == 0)
                                        break label_110;
                                    else
                                        break;
                                } catch (IOException IOException24) {
                                    IOException24.printStackTrace();
                                    return null;
                                }
                                break;
                            } else {
                                int int16 = int13 + 1;

                                try {
                                    int12 += ((String) Object14).length();
                                } catch (IOException IOException25) {
                                    IOException25.printStackTrace();
                                    return null;
                                }
                                int13 = int16;
                            }
                            continue;
                        } else {
                            try {
                                if (((List) Object9).size() > 0) {
                                    ChapterLink ChapterLink20 = (ChapterLink) ((List) Object9).get(-1 + ((List) Object9).size());

                                    ChapterLink20.setTxtCharLength(int12 - ChapterLink20.getTxtCharOffset());
                                    a((List) Object9, String1);
                                }
                                BufferedReader8.close();
                            } catch (IOException IOException26) {
                                IOException26.printStackTrace();
                                return null;
                            }
                            Object4 = Object9;
                        }
                    }
                    break;
                }
            }
            if (Object4 == null || ((List) Object4).size() == 0) {
                Object4 = c(String1);
                if (((List) Object4).size() > 0)
                    Toc2.setRealChapter(false);
            }
            Toc2.setChapters((ChapterLink[]) ((List) Object4).toArray(new ChapterLink[((List) Object4).size()]));
            return Toc2;
        }
        ++int6;
    }

    private static void a(List List1, String String2) {
        try {
            ObjectOutputStream ObjectOutputStream3 = new ObjectOutputStream((OutputStream) new FileOutputStream(new File(com.clilystudio.netbook.hpay100.a.a.J(com.clilystudio.netbook.c.d), b(String2))));

            ObjectOutputStream3.writeObject(new LocalTxtToc(new File(String2).length(), List1));
            ObjectOutputStream3.flush();
            ObjectOutputStream3.close();
        } catch (IOException IOException4) {
            IOException4.printStackTrace();
            return;
        }
    }

    public static String b(String String1) {
        String String2 = String1.trim().substring(1 + String1.lastIndexOf("/"));
        int int3 = String2.lastIndexOf(".");

        if (int3 != -1)
            return String2.substring(0, int3);
        else
            throw new FileNotFoundException();
    }

    private static List c(String String1) {
        BufferedReader BufferedReader2 = com.clilystudio.netbook.hpay100.a.a.G(String1);
        Object Object3 = new ArrayList();
        int int4 = 1;
        int int5 = 0;
        int int6 = 0;

        for (; ; ) {
            String String7 = BufferedReader2.readLine();

            if (String7 != null) {
                int int11;

                if (int5 >= int4 * 5000 || int6 == 0) {
                    Object Object9;

                    if (((List) Object3).size() > 0) {
                        ChapterLink ChapterLink12 = (ChapterLink) ((List) Object3).get(-1 + ((List) Object3).size());

                        ChapterLink12.setTxtCharLength(int5 - ChapterLink12.getTxtCharOffset());
                    }
                    Object9 = new ChapterLink();
                    ((ChapterLink) Object9).setUnreadble(false);
                    ((ChapterLink) Object9).setTitle(new StringBuilder("\u7B2C").append(int4).append("\u8282").toString());
                    ((ChapterLink) Object9).setTxtCharOffset(int5);
                    ((ChapterLink) Object9).setTxtLineOffset(int6);
                    ((List) Object3).add(Object9);
                    int11 = int4 + 1;
                } else
                    int11 = int4;
                ++int6;
                int5 += String7.length();
                int4 = int11;
            } else {
                if (((List) Object3).size() > 0) {
                    ChapterLink ChapterLink8 = (ChapterLink) ((List) Object3).get(-1 + ((List) Object3).size());

                    ChapterLink8.setTxtCharLength(int5 - ChapterLink8.getTxtCharOffset());
                    a((List) Object3, String1);
                }
                BufferedReader2.close();
                return (List) Object3;
            }
        }
    }

    private static List d(String String1) {
        try {
            File File2 = new File(com.clilystudio.netbook.hpay100.a.a.J(com.clilystudio.netbook.c.d), b(String1));

            if (!File2.exists())
        } catch (IOException IOException4) {
            IOException4.printStackTrace();
        } catch (ClassNotFoundException ClassNotFoundException3) {
            ClassNotFoundException3.printStackTrace();
        }
        return null;
    }
}
