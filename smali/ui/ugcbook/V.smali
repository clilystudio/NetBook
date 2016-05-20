.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/V;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/V;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->finish()V

    .line 82
    return-void
.end method
