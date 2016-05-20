.class final Lcom/ushaqi/zhuishushenqi/reader/aV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 1808
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aV;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z

    .line 1809
    return-void

    .line 1808
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
