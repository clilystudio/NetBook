.class public Lcom/umeng/update/n;
.super Lu/a/d;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/umeng/update/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/n;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Lu/a/d;-><init>()V

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    const-string v2, "http://au.umeng.com/api/check_app_update"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 14
    const-string v2, "http://au.umeng.co/api/check_app_update"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/update/n;->b:[Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/umeng/update/n;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lcom/umeng/update/UpdateResponse;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 28
    sget-object v1, Lcom/umeng/update/n;->c:Ljava/lang/String;

    const-string v2, "is .so file ready: %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/umeng/update/util/DeltaUpdate;->a()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v2, Lcom/umeng/update/q;

    iget-object v1, p0, Lcom/umeng/update/n;->a:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/umeng/update/q;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    .line 33
    :goto_0
    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 41
    :cond_0
    return-object v0

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/umeng/update/n;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/umeng/update/q;->a(Ljava/lang/String;)V

    .line 35
    const-class v0, Lcom/umeng/update/UpdateResponse;

    invoke-virtual {p0, v2, v0}, Lcom/umeng/update/n;->a(Lu/a/e;Ljava/lang/Class;)Lu/a/f;

    move-result-object v0

    check-cast v0, Lcom/umeng/update/UpdateResponse;

    .line 36
    if-nez v0, :cond_0

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
