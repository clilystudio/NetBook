.class final Lcom/ushaqi/zhuishushenqi/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/cb;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/cb;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cc;->a:Lcom/ushaqi/zhuishushenqi/ui/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 30
    packed-switch p2, :pswitch_data_0

    .line 52
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cc;->a:Lcom/ushaqi/zhuishushenqi/ui/cb;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a(Lcom/ushaqi/zhuishushenqi/ui/cb;)Lcom/ushaqi/zhuishushenqi/ui/cd;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/cc;->a:Lcom/ushaqi/zhuishushenqi/ui/cb;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a(Lcom/ushaqi/zhuishushenqi/ui/cb;)Lcom/ushaqi/zhuishushenqi/ui/cd;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/cd;->a(I)V

    .line 55
    :cond_0
    return-void

    .line 35
    :pswitch_1
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 38
    :pswitch_2
    const/4 v0, 0x2

    .line 39
    goto :goto_0

    .line 41
    :pswitch_3
    const/4 v0, 0x3

    .line 42
    goto :goto_0

    .line 44
    :pswitch_4
    const/4 v0, 0x4

    .line 45
    goto :goto_0

    .line 47
    :pswitch_5
    const/4 v0, 0x5

    .line 48
    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x7f0c04ad
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
