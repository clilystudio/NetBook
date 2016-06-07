.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/E;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/E;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/G;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method
