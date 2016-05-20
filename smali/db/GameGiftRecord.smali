.class public Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "GameGiftRecord"
.end annotation


# instance fields
.field public giftCode:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "giftCode"
    .end annotation
.end field

.field public giftId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "giftId"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 30
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;-><init>()V

    .line 38
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->userId:Ljava/lang/String;

    .line 39
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftId:Ljava/lang/String;

    .line 40
    iput-object p2, v0, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->giftCode:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;->save()Ljava/lang/Long;

    .line 42
    return-void
.end method

.method public static getRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/GameGiftRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "userId = ? AND giftId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
