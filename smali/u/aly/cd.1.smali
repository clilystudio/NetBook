.class public final Lu/aly/cd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lu/aly/bO;

.field private static b:Lu/aly/cb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    .line 7
    sput-object v0, Lu/aly/cd;->b:Lu/aly/cb;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/bO;
    .locals 3

    .prologue
    .line 11
    const-class v1, Lu/aly/cd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lu/aly/bO;

    invoke-direct {v0, p0}, Lu/aly/bO;-><init>(Landroid/content/Context;)V

    .line 14
    sput-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    new-instance v2, Lu/aly/ca;

    invoke-direct {v2, p0}, Lu/aly/ca;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/bO;->a(Lu/aly/a;)V

    .line 15
    sget-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    new-instance v2, Lu/aly/cc;

    invoke-direct {v2, p0}, Lu/aly/cc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/bO;->a(Lu/aly/a;)V

    .line 16
    sget-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    new-instance v2, Lu/aly/aH;

    invoke-direct {v2, p0}, Lu/aly/aH;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/bO;->a(Lu/aly/a;)V

    .line 17
    sget-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    new-instance v2, Lu/aly/ce;

    invoke-direct {v2, p0}, Lu/aly/ce;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lu/aly/bO;->a(Lu/aly/a;)V

    .line 19
    sget-object v0, Lu/aly/cd;->a:Lu/aly/bO;

    invoke-virtual {v0}, Lu/aly/bO;->d()V

    .line 22
    :cond_0
    sget-object v0, Lu/aly/cd;->a:Lu/aly/bO;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu/aly/cb;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lu/aly/cd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/cd;->b:Lu/aly/cb;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lu/aly/cb;

    invoke-direct {v0, p0}, Lu/aly/cb;-><init>(Landroid/content/Context;)V

    .line 28
    sput-object v0, Lu/aly/cd;->b:Lu/aly/cb;

    invoke-virtual {v0}, Lu/aly/cb;->b()V

    .line 31
    :cond_0
    sget-object v0, Lu/aly/cd;->b:Lu/aly/cb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
