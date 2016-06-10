.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->a:Z

    .line 522
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->c:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/UGCMainActivity;Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/am;->b:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/al;->k:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/ak;->b(I)V

    .line 524
    return-void
.end method
