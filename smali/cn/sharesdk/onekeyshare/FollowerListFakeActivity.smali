.class public Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field protected platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    .line 41
    return-void
.end method

.method public static parseFollowers(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 52
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-string v0, "SinaWeibo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    const-string v0, "users"

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 59
    const-string v5, "id"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 61
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 62
    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 63
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 64
    const-string v5, "description"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    .line 65
    const-string v5, "profile_image_url"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 66
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 67
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_3
    const-string v0, "total_number"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-le v0, v3, :cond_5

    move v0, v2

    :goto_2
    move v1, v0

    .line 162
    :cond_4
    :goto_3
    new-instance v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;-><init>()V

    .line 163
    iput-object v4, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->list:Ljava/util/ArrayList;

    .line 164
    iput-boolean v1, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$FollowersResult;->hasNextPage:Z

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 71
    goto :goto_2

    .line 73
    :cond_6
    const-string v0, "TencentWeibo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    const-string v0, "hasnext"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_9

    move v3, v2

    .line 77
    :goto_4
    const-string v0, "info"

    .line 78
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 80
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 82
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 83
    const-string v7, "nick"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 84
    iput-object v1, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 85
    iput-object v1, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 87
    const-string v1, "tweet"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 89
    const-string v7, "text"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    .line 92
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "head"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 93
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move v3, v1

    .line 74
    goto/16 :goto_4

    :cond_a
    move v1, v3

    .line 97
    goto/16 :goto_3

    .line 98
    :cond_b
    const-string v0, "Facebook"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 101
    const-string v0, "data"

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 104
    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 106
    new-instance v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v5}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 107
    iput-object v3, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 109
    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 111
    const-string v3, "picture"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 112
    if-eqz v0, :cond_d

    .line 114
    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 115
    const-string v3, "url"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 117
    :cond_d
    iget-object v0, v5, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 122
    :cond_e
    const-string v0, "paging"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 123
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_3

    .line 125
    :cond_f
    const-string v0, "Twitter"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 128
    const-string v0, "users"

    .line 129
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 131
    const-string v5, "screen_name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 132
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 133
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 134
    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 135
    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 136
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 137
    const-string v5, "description"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->description:Ljava/lang/String;

    .line 138
    const-string v5, "profile_image_url"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->icon:Ljava/lang/String;

    .line 139
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 144
    :cond_11
    const-string v0, "FacebookMessenger"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    const-string v0, "users"

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 149
    const-string v5, "jid"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 151
    new-instance v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    invoke-direct {v6}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;-><init>()V

    .line 152
    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    .line 153
    iput-object v5, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    .line 154
    const-string v5, "name"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->screenName:Ljava/lang/String;

    .line 155
    iget-object v0, v6, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->uid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method


# virtual methods
.method public getPlatform()Lcn/sharesdk/framework/Platform;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->platform:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public isRadioMode(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 21
    const-string v0, "FacebookMessenger"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->platform:Lcn/sharesdk/framework/Platform;

    .line 14
    return-void
.end method

.method public setResultForChecked(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v1, "selected"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "platform"

    iget-object v2, p0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v0}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;->setResult(Ljava/util/HashMap;)V

    .line 29
    return-void
.end method
