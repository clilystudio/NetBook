.class public final Lu/aly/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/cw;


# static fields
.field private static c:Lu/aly/ch;


# instance fields
.field private a:Lu/aly/cw;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ch;->b:Landroid/content/Context;

    .line 18
    new-instance v0, Lu/aly/cg;

    iget-object v1, p0, Lu/aly/ch;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/cg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ch;->a:Lu/aly/cw;

    .line 19
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/ch;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lu/aly/ch;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ch;->c:Lu/aly/ch;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 23
    new-instance v0, Lu/aly/ch;

    invoke-direct {v0, p0}, Lu/aly/ch;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/ch;->c:Lu/aly/ch;

    .line 26
    :cond_0
    sget-object v0, Lu/aly/ch;->c:Lu/aly/ch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lu/aly/ch;)Lu/aly/cw;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lu/aly/ch;->a:Lu/aly/cw;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lu/aly/cp;

    invoke-direct {v0, p0}, Lu/aly/cp;-><init>(Lu/aly/ch;)V

    invoke-static {v0}, Lcom/umeng/a/m;->b(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public final a(Lcom/umeng/a/a/b;)V
    .locals 1

    .prologue
    .line 34
    if-eqz p1, :cond_0

    iget-object v0, p0, Lu/aly/ch;->a:Lu/aly/cw;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lu/aly/ch;->a:Lu/aly/cw;

    check-cast v0, Lcom/umeng/a/a/f;

    invoke-virtual {p1, v0}, Lcom/umeng/a/a/b;->a(Lcom/umeng/a/a/f;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final a(Lu/aly/cx;)V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lu/aly/ci;

    invoke-direct {v0, p0, p1}, Lu/aly/ci;-><init>(Lu/aly/ch;Lu/aly/cx;)V

    invoke-static {v0}, Lcom/umeng/a/m;->b(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public final b(Lu/aly/cx;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lu/aly/ch;->a:Lu/aly/cw;

    invoke-interface {v0, p1}, Lu/aly/cw;->b(Lu/aly/cx;)V

    .line 49
    return-void
.end method
