.class final Lcom/ushaqi/zhuishushenqi/reader/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    .line 1404
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cg;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Lcom/ushaqi/zhuishushenqi/reader/cn;

    move-result-object v0

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cn;->b()V

    .line 86
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const-string v1, "tts"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->openEngineSettings(Ljava/lang/String;)I

    .line 87
    return-void
.end method
