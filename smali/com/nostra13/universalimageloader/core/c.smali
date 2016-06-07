.class final Lcom/nostra13/universalimageloader/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nostra13/universalimageloader/core/c/a;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nostra13/universalimageloader/core/b/a;

.field private final f:Lcom/nostra13/universalimageloader/core/d/a;

.field private final g:Lcom/nostra13/universalimageloader/core/l;

.field private final h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/n;Lcom/nostra13/universalimageloader/core/l;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/c;->a:Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/n;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->b:Ljava/lang/String;

    .line 52
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/n;->c:Lcom/nostra13/universalimageloader/core/c/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    .line 53
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/n;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->d:Ljava/lang/String;

    .line 54
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/n;->e:Lcom/nostra13/universalimageloader/core/d;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/d;->q()Lcom/nostra13/universalimageloader/core/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/b/a;

    .line 55
    iget-object v0, p2, Lcom/nostra13/universalimageloader/core/n;->f:Lcom/nostra13/universalimageloader/core/d/a;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->f:Lcom/nostra13/universalimageloader/core/d/a;

    .line 56
    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/c;->g:Lcom/nostra13/universalimageloader/core/l;

    .line 57
    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/c;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    .line 58
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/c;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    .line 74
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->g:Lcom/nostra13/universalimageloader/core/l;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/l;->a(Lcom/nostra13/universalimageloader/core/c/a;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/c;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 65
    :goto_1
    if-eqz v0, :cond_2

    .line 66
    const-string v0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/c;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1079
    goto :goto_1

    .line 69
    :cond_2
    const-string v0, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/c;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/c;->d:Ljava/lang/String;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/b/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/b/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/b/a;->a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 71
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->g:Lcom/nostra13/universalimageloader/core/l;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/l;->b(Lcom/nostra13/universalimageloader/core/c/a;)V

    .line 72
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/c;->f:Lcom/nostra13/universalimageloader/core/d/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/c/a;

    invoke-interface {v1}, Lcom/nostra13/universalimageloader/core/c/a;->d()Landroid/view/View;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/c;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/d/a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
