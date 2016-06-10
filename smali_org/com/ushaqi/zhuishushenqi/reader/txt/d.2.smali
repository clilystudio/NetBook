.class final Lcom/ushaqi/zhuishushenqi/reader/txt/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/SynthesizerListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferProgress(IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public final onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 680
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    .line 681
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)V

    .line 688
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    goto :goto_0
.end method

.method public final onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 693
    return-void
.end method

.method public final onSpeakBegin()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method public final onSpeakPaused()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public final onSpeakProgress(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 674
    :cond_0
    return-void
.end method

.method public final onSpeakResumed()V
    .locals 0

    .prologue
    .line 664
    return-void
.end method
