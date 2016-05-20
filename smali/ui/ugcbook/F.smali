.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/F;
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
    .line 152
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/F;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/F;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideAddCollectionActivity;->finish()V

    .line 156
    return-void
.end method
