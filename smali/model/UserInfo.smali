.class public Lcom/ushaqi/zhuishushenqi/model/UserInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x22f6e4093aa5baa9L


# instance fields
.field private _id:Ljava/lang/String;

.field private avatar:Ljava/lang/String;

.field private book_list_count:Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;

.field private code:Ljava/lang/String;

.field private exp:I

.field private gender:Ljava/lang/String;

.field private genderChanged:Z

.field private lv:I

.field private nickname:Ljava/lang/String;

.field private nicknameUpdated:Ljava/util/Date;

.field private ok:Z

.field private post_count:Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;

.field private rank:F

.field private this_week_tasks:Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;

.field private today_tasks:Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getBook_list_count()Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->book_list_count:Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getExp()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->exp:I

    return v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLv()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->lv:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getNicknameUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->nicknameUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getPost_count()Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->post_count:Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;

    return-object v0
.end method

.method public getRank()F
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->rank:F

    return v0
.end method

.method public getScaleAvatar(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-avatarl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-avatars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getThis_week_tasks()Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->this_week_tasks:Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;

    return-object v0
.end method

.method public getToday_tasks()Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->today_tasks:Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;

    return-object v0
.end method

.method public isGenderChanged()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->genderChanged:Z

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->ok:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->avatar:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setBook_list_count(Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->book_list_count:Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;

    .line 153
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->code:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setExp(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->exp:I

    .line 105
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->gender:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setGenderChanged(Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->genderChanged:Z

    .line 89
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->_id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLv(I)V
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->lv:I

    .line 113
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->nickname:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setNicknameUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->nicknameUpdated:Ljava/util/Date;

    .line 161
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->ok:Z

    .line 41
    return-void
.end method

.method public setPost_count(Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->post_count:Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;

    .line 137
    return-void
.end method

.method public setRank(F)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->rank:F

    .line 121
    return-void
.end method

.method public setThis_week_tasks(Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->this_week_tasks:Lcom/ushaqi/zhuishushenqi/model/UserInfo$ThisWeekTasks;

    .line 145
    return-void
.end method

.method public setToday_tasks(Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;->today_tasks:Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserTodayTask;

    .line 129
    return-void
.end method
