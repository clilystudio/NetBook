.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;I)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    iput p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->a:I

    aput-boolean p2, v0, v1

    .line 241
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/X;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/Y;->a:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCGuideSelectBookActivity;I)V

    goto :goto_0
.end method
