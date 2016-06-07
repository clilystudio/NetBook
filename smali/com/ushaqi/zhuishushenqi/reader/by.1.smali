.class final Lcom/ushaqi/zhuishushenqi/reader/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 241
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->buildDrawingCache()V

    .line 242
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setName(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setDownload_link(Ljava/lang/String;)V

    .line 245
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/y;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/util/y;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/AppItem;)V

    .line 246
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/y;->a()V

    .line 248
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->c:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment$DownLoadDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/by;->a:Ljava/lang/String;

    .line 1421
    const-string v2, "app_recommend_click"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method
