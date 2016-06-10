.class final Lcom/ushaqi/zhuishushenqi/reader/random/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/r;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 691
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/random/r;->a:Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/random/ReaderRandomActivity;Z)Z

    .line 692
    return-void

    .line 691
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
