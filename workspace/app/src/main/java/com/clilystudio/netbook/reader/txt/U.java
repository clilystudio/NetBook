package com.clilystudio.netbook.reader.txt;

import com.clilystudio.netbook.c;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.Toc;
import com.clilystudio.netbook.model.mixtoc.LocalTxtToc;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public final class U {
    private static final String[] a = new String[]{"\b*(第.+章)", "(\\d{3})\\s"};

    /*
     * Unable to fully structure code
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public static Toc a(String var0) {
        block18:
        {
            var1_1 = new Toc();
            var1_1.setHost(var0);
            var3_2 = U.d(var0);
            if (var3_2 == null)**GOTO lbl8
            if (var3_2.size() != 0) break block18;
            lbl8:
            // 2 sources:
            var4_3 = U.a;
            block10:
            for (var5_4 = 0; var5_4 < 2; ++var5_4) {
                var6_5 = var4_3[var5_4];
                var7_6 = a.G(var0);
                var8_7 = new ArrayList<ChapterLink>();
                var9_8 = Pattern.compile(var6_5);
                var10_9 = 0;
                var11_10 = 0;
                var12_11 = 0;
                do {
                    block19:
                    {
                        var13_12 = var7_6.readLine();
                        if (var13_12 == null) break;
                        var14_13 = var9_8.matcher(var13_12);
                        if (var14_13.find() && var14_13.groupCount() > 0) {
                            if (var8_7.size() > 0) {
                                var18_16 = var8_7.get(-1 + var8_7.size());
                                var18_16.setTxtCharLength(var11_10 - var18_16.getTxtCharOffset());
                            }
                            var16_15 = new ChapterLink();
                            var16_15.setUnreadble(false);
                            var16_15.setTitle(var14_13.group(1));
                            var16_15.setTxtLineOffset(var12_11);
                            var16_15.setTxtCharOffset(var11_10);
                            var8_7.add(var16_15);
                            var10_9 = var12_11;
                        }
                        if (var12_11 - var10_9 <= 2000) break block19;
                        var3_2 = new ArrayList<ChapterLink>();
                        lbl38:
                        // 2 sources:
                        while (var3_2.size() == 0) {
                            continue block10;
                        }
                        break block10;
                    }
                    var15_14 = var12_11 + 1;
                    var11_10 += var13_12.length();
                    var12_11 = var15_14;
                    continue;
                    break;
                } while (true);
                if (var8_7.size() > 0) {
                    var19_17 = var8_7.get(-1 + var8_7.size());
                    var19_17.setTxtCharLength(var11_10 - var19_17.getTxtCharOffset());
                    U.a(var8_7, var0);
                }
                var7_6.close();
                var3_2 = var8_7;
                **GOTO lbl38
            }
        }
        if (var3_2 == null)**GOTO lbl -1000
        try {
            if (var3_2.size() == 0) lbl - 1000: // 2 sources:
            {
                if ((var3_2 = U.c(var0)).size() > 0) {
                    var1_1.setRealChapter(false);
                }
            }
            var1_1.setChapters(var3_2.toArray(new ChapterLink[var3_2.size()]));
            return var1_1;
        } catch (IOException var2_18) {
            var2_18.printStackTrace();
            return null;
        }
    }

    private static void a(List<ChapterLink> list, String string) {
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(a.J(c.d), U.b(string))));
            objectOutputStream.writeObject(new LocalTxtToc(new File(string).length(), list));
            objectOutputStream.flush();
            objectOutputStream.close();
            return;
        } catch (IOException var3_3) {
            var3_3.printStackTrace();
            return;
        }
    }

    public static String b(String string) {
        String string2 = string.trim().substring(1 + string.lastIndexOf("/"));
        int n = string2.lastIndexOf(".");
        if (n != -1) {
            return string2.substring(0, n);
        }
        throw new FileNotFoundException();
    }

    /*
     * Enabled aggressive block sorting
     */
    private static List<ChapterLink> c(String string) {
        String string2;
        BufferedReader bufferedReader = a.G(string);
        ArrayList<ChapterLink> arrayList = new ArrayList<ChapterLink>();
        int n = 1;
        int n2 = 0;
        int n3 = 0;
        while ((string2 = bufferedReader.readLine()) != null) {
            int n4;
            if (n2 >= n * 5000 || n3 == 0) {
                if (arrayList.size() > 0) {
                    ChapterLink chapterLink = arrayList.get(-1 + arrayList.size());
                    chapterLink.setTxtCharLength(n2 - chapterLink.getTxtCharOffset());
                }
                ChapterLink chapterLink = new ChapterLink();
                chapterLink.setUnreadble(false);
                chapterLink.setTitle("\u7b2c" + n + "\u8282");
                chapterLink.setTxtCharOffset(n2);
                chapterLink.setTxtLineOffset(n3);
                arrayList.add(chapterLink);
                n4 = n + 1;
            } else {
                n4 = n;
            }
            ++n3;
            n2 += string2.length();
            n = n4;
        }
        if (arrayList.size() > 0) {
            ChapterLink chapterLink = arrayList.get(-1 + arrayList.size());
            chapterLink.setTxtCharLength(n2 - chapterLink.getTxtCharOffset());
            U.a(arrayList, string);
        }
        bufferedReader.close();
        return arrayList;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static List<ChapterLink> d(String string) {
        File file;
        block6:
        {
            file = new File(a.J(c.d), U.b(string));
            if (file.exists()) break block6;
            return null;
        }
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new FileInputStream(file));
            LocalTxtToc localTxtToc = (LocalTxtToc) objectInputStream.readObject();
            objectInputStream.close();
            if (new File(string).length() == localTxtToc.getTxtFileLength()) {
                return localTxtToc.getChapterLinks();
            }
            file.delete();
            do {
                return null;
                break;
            } while (true);
        } catch (IOException var3_4) {
            var3_4.printStackTrace();
            return null;
        } catch (ClassNotFoundException var2_5) {
            var2_5.printStackTrace();
            return null;
        }
    }
}
