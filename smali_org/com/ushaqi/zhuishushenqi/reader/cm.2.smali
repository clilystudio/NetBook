.class final Lcom/ushaqi/zhuishushenqi/reader/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    move-result-object v1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->a:I

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->b:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/cm;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V

    .line 274
    :cond_0
    return-void
.end method
