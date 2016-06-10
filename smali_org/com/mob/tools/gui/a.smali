.class public Lcom/mob/tools/gui/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/tools/gui/a;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/mob/tools/gui/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/gui/i",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mob/tools/gui/c;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/io/File;

.field private i:[Lcom/mob/tools/gui/g;

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/mob/tools/gui/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;IIIFI)V
    .locals 2

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p3, :cond_0

    :goto_0
    iput p3, p0, Lcom/mob/tools/gui/a;->b:I

    if-lez p4, :cond_1

    move v0, p4

    :goto_1
    iput v0, p0, Lcom/mob/tools/gui/a;->c:I

    const/high16 v0, 0x3f800000

    cmpl-float v0, p5, v0

    if-lez v0, :cond_2

    int-to-float v0, p4

    mul-float/2addr v0, p5

    float-to-int v0, v0

    :goto_2
    iput v0, p0, Lcom/mob/tools/gui/a;->d:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/a;->g:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mob/tools/gui/a;->j:Ljava/util/Vector;

    if-lez p2, :cond_3

    :goto_3
    new-array v0, p2, [Lcom/mob/tools/gui/g;

    iput-object v0, p0, Lcom/mob/tools/gui/a;->i:[Lcom/mob/tools/gui/g;

    new-instance v0, Lcom/mob/tools/gui/i;

    if-lez p6, :cond_4

    :goto_4
    invoke-direct {v0, p6}, Lcom/mob/tools/gui/i;-><init>(I)V

    iput-object v0, p0, Lcom/mob/tools/gui/a;->e:Lcom/mob/tools/gui/i;

    new-instance v0, Ljava/io/File;

    .line 2000
    const-string v1, "images"

    invoke-static {p1, v1}, Lcom/arcsoft/hpay100/a/a;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 0
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/tools/gui/a;->h:Ljava/io/File;

    new-instance v0, Lcom/mob/tools/gui/d;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/d;-><init>(Lcom/mob/tools/gui/a;)V

    return-void

    :cond_0
    const/16 p3, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    goto :goto_1

    :cond_2
    const/16 v0, 0x78

    goto :goto_2

    :cond_3
    const/4 p2, 0x3

    goto :goto_3

    :cond_4
    const/16 p6, 0x32

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget-object v0, v0, Lcom/mob/tools/gui/a;->e:Lcom/mob/tools/gui/i;

    invoke-virtual {v0, p0}, Lcom/mob/tools/gui/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 7

    const-class v6, Lcom/mob/tools/gui/a;

    monitor-enter v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/mob/tools/gui/a;->a(Landroid/content/Context;IIIFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private static declared-synchronized a(Landroid/content/Context;IIIFI)V
    .locals 8

    const-class v7, Lcom/mob/tools/gui/a;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/tools/gui/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/mob/tools/gui/a;-><init>(Landroid/content/Context;IIIFI)V

    sput-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/mob/tools/gui/b;)V
    .locals 2

    .prologue
    .line 0
    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/mob/tools/gui/c;

    invoke-direct {v0}, Lcom/mob/tools/gui/c;-><init>()V

    invoke-static {v0, p0}, Lcom/mob/tools/gui/c;->a(Lcom/mob/tools/gui/c;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mob/tools/gui/c;->a(Lcom/mob/tools/gui/c;Lcom/mob/tools/gui/b;)Lcom/mob/tools/gui/b;

    sget-object v1, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget-object v1, v1, Lcom/mob/tools/gui/a;->g:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget-object v0, v0, Lcom/mob/tools/gui/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget-object v1, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget v1, v1, Lcom/mob/tools/gui/a;->d:I

    if-le v0, v1, :cond_2

    :goto_1
    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget-object v0, v0, Lcom/mob/tools/gui/a;->g:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget-object v1, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget v1, v1, Lcom/mob/tools/gui/a;->c:I

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    iget-object v0, v0, Lcom/mob/tools/gui/a;->g:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1000
    :cond_2
    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lcom/mob/tools/gui/a;->a:Lcom/mob/tools/gui/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mob/tools/gui/a;->f:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/mob/tools/gui/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mob/tools/gui/a;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/mob/tools/gui/a;)I
    .locals 1

    iget v0, p0, Lcom/mob/tools/gui/a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/mob/tools/gui/a;)Lcom/mob/tools/gui/i;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/a;->e:Lcom/mob/tools/gui/i;

    return-object v0
.end method

.method static synthetic d(Lcom/mob/tools/gui/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/a;->g:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic e(Lcom/mob/tools/gui/a;)[Lcom/mob/tools/gui/g;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/a;->i:[Lcom/mob/tools/gui/g;

    return-object v0
.end method

.method static synthetic f(Lcom/mob/tools/gui/a;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/a;->h:Ljava/io/File;

    return-object v0
.end method

.method static synthetic g(Lcom/mob/tools/gui/a;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/mob/tools/gui/a;->j:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic h(Lcom/mob/tools/gui/a;)I
    .locals 1

    iget v0, p0, Lcom/mob/tools/gui/a;->c:I

    return v0
.end method
