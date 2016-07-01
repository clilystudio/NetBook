.class public final Lcom/ushaqi/zhuishushenqi/reader/n;
.super Ljava/lang/Object;
.source "SourceFile"
# instance fields
.field private final a:Lcom/ushaqi/zhuishushenqi/reader/K;
.field private final b:Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
.field private c:[I
.field private d:I
.field private e:I
.field private f:I
# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;[II)V
    .locals 1
    .prologue
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a = p1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b = p2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c = p3;
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e = p4;
    v0 = p3[p4];
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d = v0;
    return;
.end method
.method public static a(Lcom/ushaqi/zhuishushenqi/reader/K;Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;I)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = new n();
    v1 = 0x1;
    new-array v1, v1, [I
    v1[v2] = v2;
    v0.<init>(p0, p1, v1, v2);
    v0.Lcom/ushaqi/zhuishushenqi/reader/n;->f = p2;
    return v0;
.end method
# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    return v0;
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.c();
    v0 = Landroid/support/design/widget/am.b(p1, v0);
    return v0;
.end method
.method public final a(I)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e = v0;
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;)V"
        }
    .end annotation
    .prologue
    v0 = p0.e();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.h();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v1 = v1.getIndex();
    v1 = v1 + 0x1;
    v2 = 0x0;
    v0.b(v1, p1, v2);
    :goto_0
    return;
    :cond_0
    v0 = new n();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v4 = v4 + 0x1;
    v0.<init>(v1, v2, v3, v4);
    p1.a(v0);
    goto :goto_0
    :cond_1
    v0 = 0x0;
    p1.a(v0);
    goto :goto_0
.end method
.method public final a(Ljava/lang/String;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    v0 = v0.a(p1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v1 = 0x0;
    v0 = v0[v1];
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d = v0;
    return;
.end method
.method public final b()I
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v0 = v0[v1];
    return v0
.end method
.method public final b(Lcom/ushaqi/zhuishushenqi/reader/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ushaqi/zhuishushenqi/reader/e",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/n;",
            ">;)V"
        }
    .end annotation
    .prologue
    v0 = p0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = new n();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v4 = v4 + -0x1;
    v0.<init>(v1, v2, v3, v4);
    p1.a(v0);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v1 = v1.getIndex();
    v1 = v1 + -0x1;
    v2 = 0x0;
    v0.a(v1, p1, v2);
    goto :goto_0
    :cond_1
    v0 = 0x0;
    p1.a(v0);
    goto :goto_0
.end method
.method public final c()Ljava/lang/String;
    .locals 5
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v1 = v0.getBody(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0 = "";
    :goto_0
    return v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v2 = v2.length;
    v2 = v2 + -0x1;
    if (v0 <= v2) {
//       if-le v0, v2, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v0 = v0.length;
    v0 = v0 + -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e = v0;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v0 = v0[v2];
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d = v0;
    v0 = "";
    :try_start_0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v2 = v2 + 0x1;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v3 = v3.length;
    if (v2 >= v3) {
//       if-ge v2, v3, :cond_2
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v4 = v4 + 0x1;
    v3 = v3[v4];
    v0 = v1.substring(v2, v3);
    goto :goto_0
    :cond_2
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    v1.substring(v2);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public final d()[Ljava/lang/Object;
    .locals 12
    .prologue
    v3 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.getBody(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v2 = v2.length;
    v2 = v2 + -0x1;
    if (v1 <= v2) {
//       if-le v1, v2, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v1 = v1.length;
    v1 = v1 + -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e = v1;
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v1 = v1[v2];
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d = v1;
    v1 = "";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    :try_start_0
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v4 = v4 + 0x1;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v5 = v5.length;
    if (v4 >= v5) {
//       if-ge v4, v5, :cond_5
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v6 = v6 + 0x1;
    v5 = v5[v6];
    v4 = v0.substring(v4, v5);
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v6 = v6 + 0x1;
    v5 = v5[v6];
    v0 = v0.substring(v5);
    v5 = "\n";
    v5 = v0.indexOf(v5);
    v6 = -0x1;
    if (v5 == v6) {
//       if-eq v5, v6, :cond_2
    }
    v6 = 0x0;
    v0 = v0.substring(v6, v5);
    :cond_2
    v5 = "\u3000\u3000";
    v5 = v0.startsWith(v5);
    if (v5 != 0) {
//       if-nez v5, :cond_6
    }
    :goto_1
    v1 = v4;
    :goto_2
    v4 = "\n";
    v1 = v1.split(v4);
    v4 = v1.length;
    v4 = v4 + -0x1;
    v4 = v1[v4];
    v4 = v4.length();
    v5 = v0.length();
    v6 = new StringBuilder();
    v6.<init>();
    v7 = v1.length;
    v7 = v7 + -0x1;
    v8 = v1[v7];
    v6 = v6.append(v8);
    v0 = v6.append(v0);
    v0 = v0.toString();
    v1[v7] = v0;
    v6 = new LinkedList();
    v6.<init>();
    v0 = v3;
    :cond_3
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v7 += v0;
    v3 = v3[v7];
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    v3 -= v7;
    v7 = "%.2f";
    v8 = 0x1;
    new-array v8, v8, [Ljava/lang/Object;
    v9 = 0x0;
    int-to-float v10, v4
    int-to-float v3, v3
    v3 += v10;
    v10 = v4 + v5;
    int-to-float v10, v10
    v3 /= v10;
    v3 = Ljava/lang/Float.valueOf(v3);
    v8[v9] = v3;
    v3 = Ljava/lang/String.format(v7, v8);
    v3 = Ljava/lang/Float.parseFloat(v3);
    v7 = 0x42c80000    # 100.0f;
    v3 *= v7;
    float-to-int v3, v3
    v3 = Ljava/lang/Integer.valueOf(v3);
    v6.add(v3);
    v0 = v0 + 0x1;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v3 += v0;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v7 = v7.length;
    if (v3 == v7) {
//       if-eq v3, v7, :cond_4
    }
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v7 += v0;
    v3 = v3[v7];
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    v3 -= v7;
    if (v3 < v5) {
//       if-lt v3, v5, :cond_3
    }
    :cond_4
    v0 = 0x0;
    v2[v0] = v1;
    v0 = 0x1;
    v2[v0] = v6;
    :goto_3
    v0 = v2;
    goto/16 :goto_0
    :cond_5
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    v0.substring(v4);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    v11 = v1;
    v1 = v0;
    v0 = v11;
    goto/16 :goto_2
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_3
    :cond_6
    v0 = v1;
    goto/16 :goto_1
.end method
.method public final e()Z
    .locals 1
    .prologue
    v0 = p0.h();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public final f()Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    if (v0 > 0) {
//       if-gtz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.hasPrevious();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public final g()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.getKey();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v1 = v1.getContent();
    v0 = Lcom/ushaqi/zhuishushenqi/util/CipherUtil.a(v0, v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    v0 = v1.a(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v1 = 0x0;
    v0 = v0[v1];
    p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d = v0;
    goto :goto_0
.end method
.method public final h()Z
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    v0 = v0 + 0x1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v1 = v1.length;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final i()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.getTitle();
    return v0;
.end method
.method public final j()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->e;
    return v0
.end method
.method public final k()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->c;
    v0 = v0.length;
    return v0
.end method
.method public final l()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.getIndex();
    return v0
.end method
.method public final m()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->d;
    return v0
.end method
.method public final n()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->f;
    return v0
.end method
.method public final o()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v0 = v0.getStatus();
    return v0
.end method
.method public final p()Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->b;
    v1 = v1.getStatus();
    if (v1 != v0) {
//       if-ne v1, v0, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final q()Lcom/ushaqi/zhuishushenqi/reader/K;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/n;->a;
    return v0;
.end method
