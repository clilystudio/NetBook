.class final Lcom/nostra13/universalimageloader/core/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field private synthetic b:Ljava/lang/Throwable;

.field private synthetic c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/p;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/p;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/p;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/p;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/d;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/p;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b:Lcom/nostra13/universalimageloader/core/c/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/p;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->c:Lcom/nostra13/universalimageloader/core/d;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/p;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-static {v2}, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->a(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)Lcom/nostra13/universalimageloader/core/g;

    move-result-object v2

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/g;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/d;->c(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/p;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/p;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/p;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    .line 351
    return-void
.end method
