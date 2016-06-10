.class final Lcom/ushaqi/zhuishushenqi/ui/aE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Advert;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 0

    .prologue
    .line 414
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/aE;->a:Lcom/ushaqi/zhuishushenqi/model/Advert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aE;->a:Lcom/ushaqi/zhuishushenqi/model/Advert;

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/model/Advert;->processClick(Landroid/view/View;)V

    .line 418
    return-void
.end method
