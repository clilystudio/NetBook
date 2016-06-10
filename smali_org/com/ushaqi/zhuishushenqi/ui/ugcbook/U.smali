.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/U;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/U;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a(I)V

    .line 73
    return-void
.end method
