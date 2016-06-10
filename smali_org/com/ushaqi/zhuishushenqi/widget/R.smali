.class final Lcom/ushaqi/zhuishushenqi/widget/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/R;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;B)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/widget/R;-><init>(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/R;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->a(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;)V

    .line 139
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/R;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/R;->a:Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;->b(Lcom/ushaqi/zhuishushenqi/widget/GiftGameGameButton;)Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getLocalFileUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/io/File;)Z

    .line 140
    return-void
.end method
