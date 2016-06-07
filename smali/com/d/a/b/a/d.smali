.class public Lcom/d/a/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/d/a/b/a/b;

.field private g:Landroid/content/SharedPreferences$Editor;

.field private h:Lcom/d/a/b/a/c;

.field private i:Landroid/content/Context;

.field private j:Lcom/d/a/b/a/e;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/d/a/b/a/d;->a:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/d/a/b/a/d;->b:Ljava/lang/String;

    .line 23
    iput-boolean v6, p0, Lcom/d/a/b/a/d;->c:Z

    .line 24
    iput-boolean v6, p0, Lcom/d/a/b/a/d;->d:Z

    .line 25
    iput-object v1, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    .line 26
    iput-object v1, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    .line 27
    iput-object v1, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    .line 28
    iput-object v1, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    .line 29
    iput-object v1, p0, Lcom/d/a/b/a/d;->i:Landroid/content/Context;

    .line 30
    iput-object v1, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    .line 31
    iput-boolean v6, p0, Lcom/d/a/b/a/d;->k:Z

    .line 36
    iput-boolean v7, p0, Lcom/d/a/b/a/d;->k:Z

    .line 37
    iput-object p3, p0, Lcom/d/a/b/a/d;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/d/a/b/a/d;->b:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/d/a/b/a/d;->i:Landroid/content/Context;

    .line 42
    if-eqz p1, :cond_d

    .line 43
    invoke-virtual {p1, p3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    const-string v1, "t"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    :goto_0
    invoke-static {}, Lcom/d/a/b/a/d;->b()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-static {v4}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 49
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 52
    iput-boolean v7, p0, Lcom/d/a/b/a/d;->d:Z

    iput-boolean v7, p0, Lcom/d/a/b/a/d;->c:Z

    .line 61
    :goto_1
    iget-boolean v4, p0, Lcom/d/a/b/a/d;->c:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/d/a/b/a/d;->d:Z

    if-eqz v4, :cond_c

    .line 62
    :cond_0
    if-eqz p1, :cond_c

    .line 63
    invoke-static {p2}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 64
    invoke-direct {p0, p2}, Lcom/d/a/b/a/d;->b(Ljava/lang/String;)Lcom/d/a/b/a/e;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    .line 65
    iget-object v4, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    if-eqz v4, :cond_c

    .line 67
    :try_start_0
    iget-object v4, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    invoke-virtual {v4, p3}, Lcom/d/a/b/a/e;->a(Ljava/lang/String;)Lcom/d/a/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    .line 70
    iget-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    const-string v5, "t"

    invoke-interface {v4, v5}, Lcom/d/a/b/a/b;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 71
    :try_start_1
    iget-object v6, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    const-string v7, "t2"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-wide v6

    .line 91
    :try_start_2
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    const-string v1, "t2"

    invoke-interface {v0, v1}, Lcom/d/a/b/a/b;->a(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-wide v0

    .line 92
    cmp-long v4, v6, v0

    if-gez v4, :cond_8

    cmp-long v4, v6, v2

    if-lez v4, :cond_8

    .line 94
    :try_start_3
    iget-object v4, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-static {v4, v5}, Lcom/d/a/b/a/d;->a(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V

    .line 95
    iget-object v4, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    invoke-virtual {v4, p3}, Lcom/d/a/b/a/e;->a(Ljava/lang/String;)Lcom/d/a/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 126
    :cond_1
    :goto_2
    cmp-long v4, v6, v0

    if-nez v4, :cond_2

    cmp-long v4, v6, v2

    if-nez v4, :cond_5

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 127
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 128
    iget-boolean v8, p0, Lcom/d/a/b/a/d;->k:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p0, Lcom/d/a/b/a/d;->k:Z

    if-eqz v8, :cond_5

    cmp-long v6, v6, v2

    if-nez v6, :cond_5

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    const-string v1, "t2"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-interface {v0}, Lcom/d/a/b/a/b;->c()Lcom/d/a/b/a/c;

    move-result-object v0

    .line 138
    const-string v1, "t2"

    invoke-interface {v0, v1, v4, v5}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;J)Lcom/d/a/b/a/c;

    .line 139
    invoke-interface {v0}, Lcom/d/a/b/a/c;->b()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 146
    :cond_5
    :goto_3
    return-void

    .line 53
    :cond_6
    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 55
    iput-boolean v7, p0, Lcom/d/a/b/a/d;->c:Z

    .line 56
    iput-boolean v6, p0, Lcom/d/a/b/a/d;->d:Z

    goto/16 :goto_1

    .line 58
    :cond_7
    iput-boolean v6, p0, Lcom/d/a/b/a/d;->d:Z

    iput-boolean v6, p0, Lcom/d/a/b/a/d;->c:Z

    goto/16 :goto_1

    .line 98
    :cond_8
    cmp-long v4, v6, v0

    if-lez v4, :cond_9

    cmp-long v4, v0, v2

    if-lez v4, :cond_9

    .line 100
    :try_start_5
    iget-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    iget-object v5, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    invoke-static {v4, v5}, Lcom/d/a/b/a/d;->a(Lcom/d/a/b/a/b;Landroid/content/SharedPreferences;)V

    .line 101
    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    goto :goto_2

    :catch_0
    move-exception v4

    move-wide v4, v6

    :goto_4
    move-wide v6, v4

    goto :goto_2

    .line 103
    :cond_9
    cmp-long v4, v6, v2

    if-nez v4, :cond_a

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 104
    iget-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    iget-object v5, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    invoke-static {v4, v5}, Lcom/d/a/b/a/d;->a(Lcom/d/a/b/a/b;Landroid/content/SharedPreferences;)V

    .line 105
    const/4 v4, 0x0

    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    goto/16 :goto_2

    .line 107
    :cond_a
    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    cmp-long v4, v6, v2

    if-lez v4, :cond_b

    .line 108
    iget-object v4, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-static {v4, v5}, Lcom/d/a/b/a/d;->a(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V

    .line 109
    iget-object v4, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    invoke-virtual {v4, p3}, Lcom/d/a/b/a/e;->a(Ljava/lang/String;)Lcom/d/a/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    goto/16 :goto_2

    .line 112
    :cond_b
    cmp-long v4, v6, v0

    if-nez v4, :cond_1

    .line 113
    iget-object v4, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    iget-object v5, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-static {v4, v5}, Lcom/d/a/b/a/d;->a(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V

    .line 114
    iget-object v4, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    invoke-virtual {v4, p3}, Lcom/d/a/b/a/e;->a(Ljava/lang/String;)Lcom/d/a/b/a/b;

    move-result-object v4

    iput-object v4, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v4

    move-wide v4, v0

    move-wide v0, v2

    goto :goto_4

    :catch_3
    move-exception v6

    move-wide v10, v4

    move-wide v4, v0

    move-wide v0, v10

    goto :goto_4

    :catch_4
    move-exception v0

    move-wide v0, v4

    move-wide v4, v6

    goto :goto_4

    :cond_c
    move-wide v6, v0

    move-wide v0, v2

    goto/16 :goto_2

    :cond_d
    move-wide v0, v2

    goto/16 :goto_0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1664
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1666
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1667
    invoke-static {p0, p1}, Lcom/d/a/b/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1668
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1669
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1672
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_3
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1683
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1685
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected end of document"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1680
    :catch_0
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected call next(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1504
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1506
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1508
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1509
    invoke-static {p0, p2}, Lcom/d/a/b/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1510
    aget-object v2, p2, v3

    if-eqz v2, :cond_2

    .line 1513
    aget-object v2, p2, v3

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1527
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1529
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document ended before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1515
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Map value without name attribute: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1519
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1520
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1521
    return-object v1

    .line 1523
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V
    .locals 6

    .prologue
    .line 181
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 182
    invoke-interface {p1}, Lcom/d/a/b/a/b;->c()Lcom/d/a/b/a/c;

    move-result-object v2

    .line 184
    invoke-interface {v2}, Lcom/d/a/b/a/c;->a()Lcom/d/a/b/a/c;

    .line 185
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 186
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 187
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 190
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 191
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/d/a/b/a/c;

    goto :goto_0

    .line 192
    :cond_1
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 193
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;I)Lcom/d/a/b/a/c;

    goto :goto_0

    .line 194
    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 195
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;J)Lcom/d/a/b/a/c;

    goto :goto_0

    .line 196
    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 197
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;F)Lcom/d/a/b/a/c;

    goto :goto_0

    .line 198
    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 199
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;Z)Lcom/d/a/b/a/c;

    goto :goto_0

    .line 203
    :cond_5
    invoke-interface {v2}, Lcom/d/a/b/a/c;->b()Z

    .line 206
    :cond_6
    return-void
.end method

.method private static a(Lcom/d/a/b/a/b;Landroid/content/SharedPreferences;)V
    .locals 6

    .prologue
    .line 209
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 210
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 211
    if-eqz v2, :cond_6

    .line 212
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {p0}, Lcom/d/a/b/a/b;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 214
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 218
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 219
    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 220
    :cond_1
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 221
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 222
    :cond_2
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 223
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 224
    :cond_3
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 225
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 226
    :cond_4
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    .line 227
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 231
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    :cond_6
    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 1382
    if-nez p0, :cond_1

    .line 1383
    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1384
    if-eqz p1, :cond_0

    .line 1385
    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1387
    :cond_0
    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1441
    :goto_0
    return-void

    .line 1389
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1390
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1391
    if-eqz p1, :cond_2

    .line 1392
    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1394
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1395
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1397
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1398
    const-string v0, "int"

    .line 1435
    :goto_1
    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1436
    if-eqz p1, :cond_4

    .line 1437
    const-string v1, "name"

    invoke-interface {p2, v5, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1439
    :cond_4
    const-string v1, "value"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1440
    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 1399
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 1400
    const-string v0, "long"

    goto :goto_1

    .line 1401
    :cond_6
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_7

    .line 1402
    const-string v0, "float"

    goto :goto_1

    .line 1403
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 1404
    const-string v0, "double"

    goto :goto_1

    .line 1405
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1406
    const-string v0, "boolean"

    goto :goto_1

    .line 1407
    :cond_9
    instance-of v0, p0, [B

    if-eqz v0, :cond_f

    .line 1408
    check-cast p0, [B

    if-nez p0, :cond_a

    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "null"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_a
    const-string v0, "byte-array"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_b

    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    array-length v2, p0

    const-string v0, "num"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v5, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v3, Ljava/lang/StringBuilder;

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_e

    aget-byte v4, p0, v1

    shr-int/lit8 v0, v4, 0x4

    if-lt v0, v6, :cond_c

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    and-int/lit16 v0, v4, 0xff

    if-lt v0, v6, :cond_d

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_c
    add-int/lit8 v0, v0, 0x30

    goto :goto_3

    :cond_d
    add-int/lit8 v0, v0, 0x30

    goto :goto_4

    :cond_e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "byte-array"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1410
    :cond_f
    instance-of v0, p0, [I

    if-eqz v0, :cond_10

    .line 1411
    check-cast p0, [I

    invoke-static {p0, p1, p2}, Lcom/d/a/b/a/d;->a([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_0

    .line 1413
    :cond_10
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_11

    .line 1414
    check-cast p0, Ljava/util/Map;

    invoke-static {p0, p1, p2}, Lcom/d/a/b/a/d;->a(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_0

    .line 1416
    :cond_11
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_12

    .line 1417
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/d/a/b/a/d;->a(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto/16 :goto_0

    .line 1419
    :cond_12
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 1423
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1424
    if-eqz p1, :cond_13

    .line 1425
    const-string v0, "name"

    invoke-interface {p2, v5, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1427
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1428
    const-string v0, "string"

    invoke-interface {p2, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1431
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "writeValueXml: unable to write value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1248
    if-nez p0, :cond_0

    .line 1249
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1250
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1267
    :goto_0
    return-void

    .line 1254
    :cond_0
    const-string v0, "list"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1255
    if-eqz p1, :cond_1

    .line 1256
    const-string v0, "name"

    invoke-interface {p2, v3, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1259
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1260
    const/4 v0, 0x0

    .line 1261
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1262
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3, p2}, Lcom/d/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1266
    :cond_2
    const-string v0, "list"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1206
    if-nez p0, :cond_0

    .line 1207
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1208
    const-string v0, "null"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1226
    :goto_0
    return-void

    .line 1212
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 1213
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1215
    const-string v0, "map"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1216
    if-eqz p1, :cond_1

    .line 1217
    const-string v0, "name"

    invoke-interface {p2, v3, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1220
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0, p2}, Lcom/d/a/b/a/d;->a(Ljava/lang/Object;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_1

    .line 1225
    :cond_2
    const-string v0, "map"

    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static a([ILjava/lang/String;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1336
    if-nez p0, :cond_0

    .line 1337
    const-string v0, "null"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1338
    const-string v0, "null"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1357
    :goto_0
    return-void

    .line 1342
    :cond_0
    const-string v0, "int-array"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1343
    if-eqz p1, :cond_1

    .line 1344
    const-string v0, "name"

    invoke-interface {p2, v4, v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1347
    :cond_1
    array-length v1, p0

    .line 1348
    const-string v0, "num"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1350
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 1351
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1352
    const-string v2, "value"

    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1353
    const-string v2, "item"

    invoke-interface {p2, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1350
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1356
    :cond_2
    const-string v0, "int-array"

    invoke-interface {p2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 1598
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "num"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1606
    new-array v2, v0, [I

    .line 1607
    const/4 v1, 0x0

    .line 1609
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v4, v0

    move v0, v1

    move v1, v4

    .line 1611
    :cond_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1612
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1614
    const/4 v1, 0x0

    :try_start_1
    const-string v3, "value"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1637
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 1638
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1640
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document ended before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1600
    :catch_0
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Need num attribute in byte-array"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1602
    :catch_1
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not a number in num attribute in byte-array"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :catch_2
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Need value attribute in item"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1620
    :catch_3
    move-exception v0

    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Not a number in value attribute in item"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1624
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected item tag at: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1627
    :cond_3
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 1628
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1629
    return-object v2

    .line 1630
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1633
    :cond_5
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/String;)Lcom/d/a/b/a/e;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v1, Ljava/io/File;

    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x2

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 161
    new-instance v0, Lcom/d/a/b/a/e;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/d/a/b/a/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    .line 162
    iget-object v0, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    .line 164
    :cond_1
    return-object v0

    :cond_2
    move-object v1, v0

    .line 159
    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1690
    const-string v1, "name"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1691
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1698
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1761
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v6, :cond_13

    .line 1762
    if-ne v1, v8, :cond_11

    .line 1763
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1764
    aput-object v2, p1, v5

    .line 1767
    :goto_1
    return-object v0

    .line 1700
    :cond_1
    const-string v1, "string"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1701
    const-string v0, ""

    .line 1703
    :cond_2
    :goto_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v6, :cond_6

    .line 1704
    if-ne v1, v8, :cond_4

    .line 1705
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "string"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1706
    aput-object v2, p1, v5

    goto :goto_1

    .line 1711
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag in <string>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1714
    :cond_4
    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1716
    :cond_5
    if-ne v1, v7, :cond_2

    .line 1717
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start tag in <string>: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1722
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Unexpected end of document in <string>"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1724
    :cond_7
    const-string v1, "int"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1725
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 1726
    :cond_8
    const-string v1, "long"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1727
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 1728
    :cond_9
    const-string v1, "float"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1729
    new-instance v1, Ljava/lang/Float;

    const-string v4, "value"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1730
    :cond_a
    const-string v1, "double"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1731
    new-instance v1, Ljava/lang/Double;

    const-string v4, "value"

    invoke-interface {p0, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    .line 1732
    :cond_b
    const-string v1, "boolean"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1733
    const-string v1, "value"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1734
    :cond_c
    const-string v0, "int-array"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1735
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1736
    const-string v0, "int-array"

    invoke-static {p0, v0}, Lcom/d/a/b/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[I

    move-result-object v0

    .line 1737
    aput-object v2, p1, v5

    goto/16 :goto_1

    .line 1741
    :cond_d
    const-string v0, "map"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1742
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1743
    const-string v0, "map"

    invoke-static {p0, v0, p1}, Lcom/d/a/b/a/d;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 1744
    aput-object v2, p1, v5

    goto/16 :goto_1

    .line 1748
    :cond_e
    const-string v0, "list"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1749
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 1750
    const-string v0, "list"

    invoke-static {p0, v0, p1}, Lcom/d/a/b/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1751
    aput-object v2, p1, v5

    goto/16 :goto_1

    .line 1756
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown tag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end tag in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1771
    :cond_11
    const/4 v4, 0x4

    if-ne v1, v4, :cond_12

    .line 1772
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected text in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1774
    :cond_12
    if-ne v1, v7, :cond_0

    .line 1775
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected start tag in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1779
    :cond_13
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of document in <"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    const-string v0, ""

    .line 151
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 1553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1557
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 1558
    invoke-static {p0, p2}, Lcom/d/a/b/a/d;->b(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1559
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1568
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 1569
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1571
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Document ended before "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1561
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1562
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1563
    return-object v1

    .line 1565
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end tag at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-interface {v0}, Lcom/d/a/b/a/b;->a()Z

    move-result v0

    .line 239
    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/d/a/b/a/d;->a()Z

    .line 244
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/d/a/b/a/d;->c()Z

    .line 429
    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {v0}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    :goto_0
    return-object v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Lcom/d/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 438
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 306
    invoke-static {p1}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-boolean v0, p0, Lcom/d/a/b/a/d;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-interface {v0}, Lcom/d/a/b/a/b;->c()Lcom/d/a/b/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    :cond_1
    invoke-direct {p0}, Lcom/d/a/b/a/d;->c()Z

    .line 308
    iget-object v0, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    if-eqz v0, :cond_3

    .line 312
    iget-object v0, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    invoke-interface {v0, p1, p2}, Lcom/d/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/d/a/b/a/c;

    .line 315
    :cond_3
    return-void
.end method

.method public final a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x1

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    iget-object v4, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    if-eqz v4, :cond_1

    .line 371
    iget-boolean v4, p0, Lcom/d/a/b/a/d;->k:Z

    if-nez v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 373
    iget-object v4, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    const-string v5, "t"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 376
    :cond_0
    iget-object v2, p0, Lcom/d/a/b/a/d;->g:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_2

    .line 381
    iget-object v2, p0, Lcom/d/a/b/a/d;->i:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/d/a/b/a/d;->i:Landroid/content/Context;

    iget-object v3, p0, Lcom/d/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    .line 386
    :cond_2
    invoke-static {}, Lcom/d/a/b/a/d;->b()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-static {v2}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 388
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    iget-object v3, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    if-nez v3, :cond_7

    .line 390
    iget-object v1, p0, Lcom/d/a/b/a/d;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/d/a/b/a/d;->b(Ljava/lang/String;)Lcom/d/a/b/a/e;

    move-result-object v1

    .line 392
    if-eqz v1, :cond_3

    .line 393
    iget-object v3, p0, Lcom/d/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/d/a/b/a/e;->a(Ljava/lang/String;)Lcom/d/a/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    .line 395
    iget-boolean v1, p0, Lcom/d/a/b/a/d;->k:Z

    if-nez v1, :cond_6

    .line 396
    iget-object v1, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-static {v1, v3}, Lcom/d/a/b/a/d;->a(Landroid/content/SharedPreferences;Lcom/d/a/b/a/b;)V

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    invoke-interface {v1}, Lcom/d/a/b/a/b;->c()Lcom/d/a/b/a/c;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    .line 410
    :cond_3
    :goto_1
    const-string v1, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mounted_ro"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    if-eqz v1, :cond_5

    .line 415
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Lcom/d/a/b/a/d;->j:Lcom/d/a/b/a/e;

    iget-object v2, p0, Lcom/d/a/b/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/d/a/b/a/e;->a(Ljava/lang/String;)Lcom/d/a/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_5
    :goto_2
    return v0

    .line 398
    :cond_6
    iget-object v1, p0, Lcom/d/a/b/a/d;->f:Lcom/d/a/b/a/b;

    iget-object v3, p0, Lcom/d/a/b/a/d;->e:Landroid/content/SharedPreferences;

    invoke-static {v1, v3}, Lcom/d/a/b/a/d;->a(Lcom/d/a/b/a/b;Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 403
    :cond_7
    iget-object v3, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    if-eqz v3, :cond_3

    .line 404
    iget-object v3, p0, Lcom/d/a/b/a/d;->h:Lcom/d/a/b/a/c;

    invoke-interface {v3}, Lcom/d/a/b/a/c;->b()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 405
    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method
