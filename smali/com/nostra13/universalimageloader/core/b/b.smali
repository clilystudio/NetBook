.class public final Lcom/nostra13/universalimageloader/core/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/b/a;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/b/b;-><init>(II)V

    .line 47
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/nostra13/universalimageloader/core/b/b;->a:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostra13/universalimageloader/core/b/b;->b:I

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c/a;)V
    .locals 3

    .prologue
    .line 56
    instance-of v0, p2, Lcom/nostra13/universalimageloader/core/c/b;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/b/c;

    iget v1, p0, Lcom/nostra13/universalimageloader/core/b/b;->a:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/b/b;->b:I

    invoke-direct {v0, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/b/c;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/c/a;->a(Landroid/graphics/drawable/Drawable;)Z

    .line 61
    return-void
.end method
