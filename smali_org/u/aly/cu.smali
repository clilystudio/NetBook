.class public final Lu/aly/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lu/aly/cB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cu;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 22
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lu/aly/cB;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lu/aly/cu;->b:Lu/aly/cB;

    .line 27
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 31
    .line 1039
    sget-boolean v0, Lcom/umeng/a/a;->g:Z

    if-eqz v0, :cond_1

    .line 1040
    iget-object v0, p0, Lu/aly/cu;->b:Lu/aly/cB;

    invoke-interface {v0, p2}, Lu/aly/cB;->a(Ljava/lang/Throwable;)V

    .line 33
    :goto_0
    iget-object v0, p0, Lu/aly/cu;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/cu;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 34
    iget-object v0, p0, Lu/aly/cu;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 36
    :cond_0
    return-void

    .line 1042
    :cond_1
    iget-object v0, p0, Lu/aly/cu;->b:Lu/aly/cB;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lu/aly/cB;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
