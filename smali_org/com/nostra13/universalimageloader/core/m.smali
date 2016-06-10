.class final Lcom/nostra13/universalimageloader/core/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

.field private synthetic b:Lcom/nostra13/universalimageloader/core/l;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/l;Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/m;->b:Lcom/nostra13/universalimageloader/core/l;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/m;->a:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/m;->b:Lcom/nostra13/universalimageloader/core/l;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/l;->a:Lcom/nostra13/universalimageloader/core/g;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/g;->m:Lcom/nostra13/universalimageloader/a/a/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/m;->a:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 1450
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->a:Ljava/lang/String;

    .line 72
    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/a/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/m;->b:Lcom/nostra13/universalimageloader/core/l;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/l;->a(Lcom/nostra13/universalimageloader/core/l;)V

    .line 75
    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/m;->b:Lcom/nostra13/universalimageloader/core/l;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/l;->b(Lcom/nostra13/universalimageloader/core/l;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/m;->a:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 80
    :goto_1
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/m;->b:Lcom/nostra13/universalimageloader/core/l;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/l;->c(Lcom/nostra13/universalimageloader/core/l;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/m;->a:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
