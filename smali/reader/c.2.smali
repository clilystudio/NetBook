.class final Lcom/ushaqi/zhuishushenqi/reader/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/c;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/c;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Lcom/ushaqi/zhuishushenqi/reader/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/c;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/c;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;Z)Z

    .line 178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/c;->a:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)Lcom/ushaqi/zhuishushenqi/reader/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/d;->d()V

    .line 180
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 170
    return-void
.end method
