.class final Lcom/nostra13/universalimageloader/core/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;II)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/o;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iput p2, p0, Lcom/nostra13/universalimageloader/core/o;->a:I

    iput p3, p0, Lcom/nostra13/universalimageloader/core/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/o;->c:Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->b:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    .line 335
    return-void
.end method
