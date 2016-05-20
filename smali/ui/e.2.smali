.class final Lcom/ushaqi/zhuishushenqi/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/e;->b:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/e;->b:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/e;->b:Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/e;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method
