.class final Lcom/ushaqi/zhuishushenqi/reader/ci;
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
    .line 113
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ci;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ci;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ci;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;IZ)V

    .line 117
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ci;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;Z)Z

    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ci;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)I

    .line 119
    return-void
.end method
