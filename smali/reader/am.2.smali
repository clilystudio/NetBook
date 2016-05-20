.class final Lcom/ushaqi/zhuishushenqi/reader/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/SynthesizerListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferProgress(IIILjava/lang/String;)V
    .locals 0

    .prologue
    .line 867
    return-void
.end method

.method public final onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    .line 893
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)V

    .line 900
    :goto_0
    return-void

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    goto :goto_0
.end method

.method public final onEvent(IIILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 905
    return-void
.end method

.method public final onSpeakBegin()V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method public final onSpeakPaused()V
    .locals 0

    .prologue
    .line 872
    return-void
.end method

.method public final onSpeakProgress(III)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 882
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/am;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 886
    :cond_0
    return-void
.end method

.method public final onSpeakResumed()V
    .locals 0

    .prologue
    .line 877
    return-void
.end method
