.class final Lcom/ushaqi/zhuishushenqi/ui/bG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bG;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bG;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;)V

    .line 205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bG;->a:Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;

    const-string v1, "search_history_clear"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    return-void
.end method
