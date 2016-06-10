.class final Lcom/ushaqi/zhuishushenqi/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/view/c;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/view/c;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/view/d;->a:Lcom/ushaqi/zhuishushenqi/view/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 34
    packed-switch p2, :pswitch_data_0

    .line 47
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/d;->a:Lcom/ushaqi/zhuishushenqi/view/c;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/view/c;->a(Lcom/ushaqi/zhuishushenqi/view/c;)Lcom/ushaqi/zhuishushenqi/ui/cd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/d;->a:Lcom/ushaqi/zhuishushenqi/view/c;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/view/c;->a(Lcom/ushaqi/zhuishushenqi/view/c;)Lcom/ushaqi/zhuishushenqi/ui/cd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/cd;->a(I)V

    .line 50
    :cond_0
    return-void

    .line 39
    :pswitch_1
    const/4 v0, 0x2

    .line 40
    goto :goto_0

    .line 42
    :pswitch_2
    const/4 v0, 0x4

    .line 43
    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x7f0c04af
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
