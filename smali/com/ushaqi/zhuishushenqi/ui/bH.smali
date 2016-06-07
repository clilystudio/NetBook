.class final Lcom/ushaqi/zhuishushenqi/ui/bH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/i;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bH;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bH;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, p1}, Lcom/arcsoft/hpay100/a/a;->t(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bH;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;Ljava/lang/String;)V

    .line 245
    return-void
.end method
