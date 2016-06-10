.class final Lcom/ushaqi/zhuishushenqi/ui/bN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/i;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/bM;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/bM;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bN;->a:Lcom/ushaqi/zhuishushenqi/ui/bM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bN;->a:Lcom/ushaqi/zhuishushenqi/ui/bM;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, p1}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bN;->a:Lcom/ushaqi/zhuishushenqi/ui/bM;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bM;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)V

    .line 428
    return-void
.end method
