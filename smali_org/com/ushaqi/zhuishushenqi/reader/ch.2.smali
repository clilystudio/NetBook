.class final Lcom/ushaqi/zhuishushenqi/reader/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ch;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ch;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;Z)Z

    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ch;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Lcom/ushaqi/zhuishushenqi/reader/cn;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cn;->a(Z)V

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ch;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Lcom/ushaqi/zhuishushenqi/reader/cn;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cn;->a(I)V

    .line 108
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ch;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Lcom/ushaqi/zhuishushenqi/reader/cn;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cn;->a()V

    .line 109
    return-void
.end method
