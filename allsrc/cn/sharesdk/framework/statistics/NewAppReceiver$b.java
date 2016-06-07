package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

class NewAppReceiver$b extends Thread
{
  private Context a;
  private NewAppReceiver.a b;

  private NewAppReceiver$b(Context paramContext)
  {
    this.a = paramContext;
    this.b = new NewAppReceiver.a(paramContext);
  }

  private ArrayList<HashMap<String, String>> a(HashMap<String, HashMap<String, String>> paramHashMap)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramHashMap.entrySet().iterator();
    while (localIterator.hasNext())
      localArrayList.add(((Map.Entry)localIterator.next()).getValue());
    return localArrayList;
  }

  private HashMap<String, HashMap<String, String>> a(ArrayList<HashMap<String, String>> paramArrayList)
  {
    HashMap localHashMap1 = new HashMap();
    Iterator localIterator = paramArrayList.iterator();
    while (localIterator.hasNext())
    {
      HashMap localHashMap2 = (HashMap)localIterator.next();
      String str = (String)localHashMap2.get("pkg");
      if (TextUtils.isEmpty(str))
        continue;
      localHashMap1.put(str, localHashMap2);
    }
    return localHashMap1;
  }

  public static void a(Context paramContext)
  {
    new b(paramContext).start();
  }

  // ERROR //
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 15	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	Landroid/content/Context;
    //   4: invokestatic 89	com/mob/tools/b/a:a	(Landroid/content/Context;)Lcom/mob/tools/b/a;
    //   7: astore_1
    //   8: aload_1
    //   9: iconst_0
    //   10: invokevirtual 92	com/mob/tools/b/a:a	(Z)Ljava/util/ArrayList;
    //   13: astore_2
    //   14: aload_0
    //   15: getfield 21	cn/sharesdk/framework/statistics/NewAppReceiver$b:b	Lcn/sharesdk/framework/statistics/NewAppReceiver$a;
    //   18: invokevirtual 95	cn/sharesdk/framework/statistics/NewAppReceiver$a:a	()Ljava/util/ArrayList;
    //   21: astore_3
    //   22: aload_0
    //   23: getfield 21	cn/sharesdk/framework/statistics/NewAppReceiver$b:b	Lcn/sharesdk/framework/statistics/NewAppReceiver$a;
    //   26: aload_2
    //   27: invokevirtual 98	cn/sharesdk/framework/statistics/NewAppReceiver$a:a	(Ljava/util/ArrayList;)V
    //   30: aload_0
    //   31: aload_2
    //   32: invokespecial 100	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	(Ljava/util/ArrayList;)Ljava/util/HashMap;
    //   35: astore 4
    //   37: aload_0
    //   38: aload_3
    //   39: invokespecial 100	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	(Ljava/util/ArrayList;)Ljava/util/HashMap;
    //   42: astore 5
    //   44: aload_3
    //   45: invokevirtual 59	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   48: astore 6
    //   50: aload 6
    //   52: invokeinterface 43 1 0
    //   57: ifeq +42 -> 99
    //   60: aload 6
    //   62: invokeinterface 47 1 0
    //   67: checkcast 27	java/util/HashMap
    //   70: ldc 61
    //   72: invokevirtual 65	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   75: checkcast 67	java/lang/String
    //   78: astore 22
    //   80: aload 22
    //   82: invokestatic 73	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   85: ifne -35 -> 50
    //   88: aload 4
    //   90: aload 22
    //   92: invokevirtual 103	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   95: pop
    //   96: goto -46 -> 50
    //   99: aload_2
    //   100: invokevirtual 59	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   103: astore 7
    //   105: aload 7
    //   107: invokeinterface 43 1 0
    //   112: ifeq +42 -> 154
    //   115: aload 7
    //   117: invokeinterface 47 1 0
    //   122: checkcast 27	java/util/HashMap
    //   125: ldc 61
    //   127: invokevirtual 65	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   130: checkcast 67	java/lang/String
    //   133: astore 20
    //   135: aload 20
    //   137: invokestatic 73	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   140: ifne -35 -> 105
    //   143: aload 5
    //   145: aload 20
    //   147: invokevirtual 103	java/util/HashMap:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   150: pop
    //   151: goto -46 -> 105
    //   154: aload_0
    //   155: aload 4
    //   157: invokespecial 105	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	(Ljava/util/HashMap;)Ljava/util/ArrayList;
    //   160: astore 8
    //   162: aload_0
    //   163: aload 5
    //   165: invokespecial 105	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	(Ljava/util/HashMap;)Ljava/util/ArrayList;
    //   168: astore 9
    //   170: invokestatic 111	java/lang/System:currentTimeMillis	()J
    //   173: aload_0
    //   174: getfield 21	cn/sharesdk/framework/statistics/NewAppReceiver$b:b	Lcn/sharesdk/framework/statistics/NewAppReceiver$a;
    //   177: invokevirtual 113	cn/sharesdk/framework/statistics/NewAppReceiver$a:b	()J
    //   180: lsub
    //   181: ldc2_w 114
    //   184: lcmp
    //   185: iflt +106 -> 291
    //   188: iconst_1
    //   189: istore 10
    //   191: iload 10
    //   193: ifne +10 -> 203
    //   196: aload_3
    //   197: invokevirtual 119	java/util/ArrayList:size	()I
    //   200: ifgt +111 -> 311
    //   203: aload_0
    //   204: getfield 21	cn/sharesdk/framework/statistics/NewAppReceiver$b:b	Lcn/sharesdk/framework/statistics/NewAppReceiver$a;
    //   207: invokestatic 111	java/lang/System:currentTimeMillis	()J
    //   210: invokevirtual 122	cn/sharesdk/framework/statistics/NewAppReceiver$a:a	(J)V
    //   213: aload_0
    //   214: aload_0
    //   215: aload_2
    //   216: invokespecial 100	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	(Ljava/util/ArrayList;)Ljava/util/HashMap;
    //   219: invokespecial 105	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	(Ljava/util/HashMap;)Ljava/util/ArrayList;
    //   222: astore 16
    //   224: aload_0
    //   225: getfield 15	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	Landroid/content/Context;
    //   228: invokestatic 127	cn/sharesdk/framework/statistics/a:a	(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a;
    //   231: ldc 129
    //   233: aload 16
    //   235: invokevirtual 132	cn/sharesdk/framework/statistics/a:a	(Ljava/lang/String;Ljava/util/ArrayList;)V
    //   238: aload 9
    //   240: invokevirtual 119	java/util/ArrayList:size	()I
    //   243: ifle +47 -> 290
    //   246: invokestatic 137	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   249: new 139	java/lang/StringBuilder
    //   252: dup
    //   253: ldc 141
    //   255: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   258: aload_1
    //   259: invokevirtual 148	com/mob/tools/b/a:k	()Ljava/lang/String;
    //   262: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: iconst_0
    //   269: anewarray 157	java/lang/Object
    //   272: invokevirtual 163	com/mob/tools/log/d:d	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   275: pop
    //   276: aload_0
    //   277: getfield 15	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	Landroid/content/Context;
    //   280: invokestatic 127	cn/sharesdk/framework/statistics/a:a	(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a;
    //   283: ldc 165
    //   285: aload 9
    //   287: invokevirtual 132	cn/sharesdk/framework/statistics/a:a	(Ljava/lang/String;Ljava/util/ArrayList;)V
    //   290: return
    //   291: iconst_0
    //   292: istore 10
    //   294: goto -103 -> 191
    //   297: astore 11
    //   299: invokestatic 137	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   302: aload 11
    //   304: invokevirtual 169	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   307: pop
    //   308: goto -70 -> 238
    //   311: aload 8
    //   313: invokevirtual 119	java/util/ArrayList:size	()I
    //   316: ifle -78 -> 238
    //   319: invokestatic 137	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   322: new 139	java/lang/StringBuilder
    //   325: dup
    //   326: ldc 171
    //   328: invokespecial 144	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   331: aload_1
    //   332: invokevirtual 148	com/mob/tools/b/a:k	()Ljava/lang/String;
    //   335: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   338: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   341: iconst_0
    //   342: anewarray 157	java/lang/Object
    //   345: invokevirtual 163	com/mob/tools/log/d:d	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   348: pop
    //   349: aload_0
    //   350: getfield 15	cn/sharesdk/framework/statistics/NewAppReceiver$b:a	Landroid/content/Context;
    //   353: invokestatic 127	cn/sharesdk/framework/statistics/a:a	(Landroid/content/Context;)Lcn/sharesdk/framework/statistics/a;
    //   356: ldc 173
    //   358: aload 8
    //   360: invokevirtual 132	cn/sharesdk/framework/statistics/a:a	(Ljava/lang/String;Ljava/util/ArrayList;)V
    //   363: goto -125 -> 238
    //   366: astore 18
    //   368: invokestatic 137	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   371: aload 18
    //   373: invokevirtual 169	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   376: pop
    //   377: goto -139 -> 238
    //   380: astore 14
    //   382: invokestatic 137	cn/sharesdk/framework/utils/d:a	()Lcom/mob/tools/log/d;
    //   385: aload 14
    //   387: invokevirtual 169	com/mob/tools/log/d:w	(Ljava/lang/Throwable;)I
    //   390: pop
    //   391: return
    //
    // Exception table:
    //   from	to	target	type
    //   213	238	297	java/lang/Throwable
    //   349	363	366	java/lang/Throwable
    //   276	290	380	java/lang/Throwable
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.NewAppReceiver.b
 * JD-Core Version:    0.6.0
 */