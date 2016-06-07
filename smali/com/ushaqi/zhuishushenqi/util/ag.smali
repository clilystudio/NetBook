.class public final Lcom/ushaqi/zhuishushenqi/util/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/ag;

.field private static b:[Landroid/os/Handler;

.field private static c:I

.field private static d:Lcom/ushaqi/zhuishushenqi/api/ApiService;

.field private static e:Landroid/os/Handler;

.field private static f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ushaqi/zhuishushenqi/util/ai;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->g:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/ah;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/ah;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->h:Landroid/os/Handler$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/ag;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 51
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->a:Lcom/ushaqi/zhuishushenqi/util/ag;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/ag;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/ag;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->a:Lcom/ushaqi/zhuishushenqi/util/ag;

    .line 55
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/ag;->h:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->e:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->d:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    .line 58
    new-array v0, v5, [Landroid/os/Handler;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->b:[Landroid/os/Handler;

    .line 59
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_1

    .line 60
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/aj;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PostCountWorker"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/util/aj;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/aj;->start()V

    .line 62
    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/ag;->b:[Landroid/os/Handler;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/aj;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    aput-object v3, v2, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->a:Lcom/ushaqi/zhuishushenqi/util/ag;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->g:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic c()Lcom/ushaqi/zhuishushenqi/api/ApiService;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->d:Lcom/ushaqi/zhuishushenqi/api/ApiService;

    return-object v0
.end method

.method static synthetic d()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/util/ai;)V
    .locals 4

    .prologue
    .line 87
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/ai;->a(Ljava/lang/String;I)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/ag;->b:[Landroid/os/Handler;

    sget v1, Lcom/ushaqi/zhuishushenqi/util/ag;->c:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/ushaqi/zhuishushenqi/util/ag;->c:I

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/ag;->b:[Landroid/os/Handler;

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 1098
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1099
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1100
    const-string v3, "bookId"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1102
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
