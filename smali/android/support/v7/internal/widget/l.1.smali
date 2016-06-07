.class public Landroid/support/v7/internal/widget/l;
.super Landroid/database/DataSetObservable;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v7/internal/widget/l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/m;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/internal/widget/p;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/Context;

.field private final h:Ljava/lang/String;

.field private i:Landroid/support/v7/internal/widget/n;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-class v0, Landroid/support/v7/internal/widget/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v7/internal/widget/l;->a:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/l;->b:Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/l;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    .line 263
    new-instance v0, Landroid/support/v7/internal/widget/o;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/o;-><init>(Landroid/support/v7/internal/widget/l;B)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/l;->i:Landroid/support/v7/internal/widget/n;

    .line 268
    const/16 v0, 0x32

    iput v0, p0, Landroid/support/v7/internal/widget/l;->j:I

    .line 278
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/l;->k:Z

    .line 289
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->l:Z

    .line 297
    iput-boolean v2, p0, Landroid/support/v7/internal/widget/l;->m:Z

    .line 302
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->n:Z

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/content/Context;

    .line 352
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    iput-object p2, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/l;
    .locals 3

    .prologue
    .line 334
    sget-object v1, Landroid/support/v7/internal/widget/l;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    sget-object v0, Landroid/support/v7/internal/widget/l;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/l;

    .line 336
    if-nez v0, :cond_0

    .line 337
    new-instance v0, Landroid/support/v7/internal/widget/l;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/internal/widget/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 338
    sget-object v2, Landroid/support/v7/internal/widget/l;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    monitor-exit v1

    return-object v0

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/l;Z)Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->k:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/l;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/support/v7/internal/widget/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 658
    .line 2714
    iget-boolean v2, p0, Landroid/support/v7/internal/widget/l;->k:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/support/v7/internal/widget/l;->m:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2716
    iput-boolean v1, p0, Landroid/support/v7/internal/widget/l;->k:Z

    .line 2717
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->l:Z

    .line 2718
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->g()V

    .line 659
    :goto_0
    or-int/lit8 v0, v0, 0x0

    .line 660
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->f()V

    .line 661
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->notifyChanged()V

    .line 665
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 2721
    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 746
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Landroid/support/v7/internal/widget/l;->j:I

    sub-int v2, v0, v2

    .line 747
    if-gtz v2, :cond_1

    .line 757
    :cond_0
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->m:Z

    move v0, v1

    .line 751
    :goto_0
    if-ge v0, v2, :cond_0

    .line 752
    iget-object v3, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 966
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->g:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v1

    .line 974
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 975
    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 977
    const/4 v0, 0x0

    .line 978
    :goto_0
    if-eq v0, v8, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 979
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 982
    :cond_0
    const-string v0, "historical-records"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 983
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file does not start with historical-records tag."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    :try_start_2
    sget-object v2, Landroid/support/v7/internal/widget/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1024
    if-eqz v1, :cond_1

    .line 1026
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1032
    :cond_1
    :goto_1
    return-void

    .line 987
    :cond_2
    :try_start_4
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    .line 988
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 991
    :cond_3
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 992
    if-eq v3, v8, :cond_6

    .line 995
    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    .line 998
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 999
    const-string v4, "historical-record"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1000
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Share records file not well-formed."

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1021
    :catch_1
    move-exception v0

    .line 1022
    :try_start_5
    sget-object v2, Landroid/support/v7/internal/widget/l;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error reading historical recrod file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1024
    if-eqz v1, :cond_1

    .line 1026
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1029
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1003
    :cond_4
    const/4 v3, 0x0

    :try_start_7
    const-string v4, "activity"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1004
    const/4 v4, 0x0

    const-string v5, "time"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1006
    const/4 v6, 0x0

    const-string v7, "weight"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 1008
    new-instance v7, Landroid/support/v7/internal/widget/p;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/support/v7/internal/widget/p;-><init>(Ljava/lang/String;JF)V

    .line 1009
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 1024
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 1026
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1029
    :cond_5
    :goto_3
    throw v0

    .line 1024
    :cond_6
    if-eqz v1, :cond_1

    .line 1026
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 1029
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_3

    .line 971
    :catch_6
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    .line 399
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 400
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->e()V

    .line 401
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/content/pm/ResolveInfo;)I
    .locals 5

    .prologue
    .line 428
    iget-object v2, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->e()V

    .line 430
    iget-object v3, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    .line 431
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 432
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    .line 433
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    .line 434
    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    if-ne v0, p1, :cond_0

    .line 435
    monitor-exit v2

    move v0, v1

    .line 438
    :goto_1
    return v0

    .line 432
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, -0x1

    monitor-exit v2

    goto :goto_1

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->e()V

    .line 416
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 463
    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    return-object v0

    .line 492
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Landroid/content/pm/ResolveInfo;
    .locals 3

    .prologue
    .line 516
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 517
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->e()V

    .line 518
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 522
    :goto_0
    return-object v0

    .line 521
    :cond_0
    monitor-exit v1

    .line 522
    const/4 v0, 0x0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->e()V

    .line 647
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(I)V
    .locals 6

    .prologue
    .line 536
    iget-object v2, p0, Landroid/support/v7/internal/widget/l;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_0
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->e()V

    .line 539
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    .line 540
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->e:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/m;

    .line 543
    if-eqz v1, :cond_0

    .line 545
    iget v1, v1, Landroid/support/v7/internal/widget/m;->b:F

    iget v3, v0, Landroid/support/v7/internal/widget/m;->b:F

    sub-float/2addr v1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    add-float/2addr v1, v3

    .line 551
    :goto_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v0, Landroid/support/v7/internal/widget/p;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/support/v7/internal/widget/p;-><init>(Landroid/content/ComponentName;JF)V

    .line 1731
    iget-object v1, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 1732
    if-eqz v0, :cond_3

    .line 1733
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->m:Z

    .line 1734
    invoke-direct {p0}, Landroid/support/v7/internal/widget/l;->f()V

    .line 2570
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->l:Z

    if-nez v0, :cond_1

    .line 2571
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 548
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2573
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/l;->m:Z

    if-eqz v0, :cond_2

    .line 2576
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/l;->m:Z

    .line 2577
    iget-object v0, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2578
    new-instance v0, Landroid/support/v7/internal/widget/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/internal/widget/l;B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/internal/widget/l;->f:Ljava/util/List;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/support/v7/internal/widget/l;->h:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1737
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/l;->notifyChanged()V

    .line 557
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
