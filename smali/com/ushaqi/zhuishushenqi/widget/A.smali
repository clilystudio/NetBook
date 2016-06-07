.class final Lcom/ushaqi/zhuishushenqi/widget/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/A;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;B)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/A;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/A;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/A;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getLocalFileUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 144
    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/A;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->b(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/A;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/model/Game;->setDownloadStatus(I)V

    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/A;->a:Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/GameDownloadButton;->a(I)V

    goto :goto_0
.end method
